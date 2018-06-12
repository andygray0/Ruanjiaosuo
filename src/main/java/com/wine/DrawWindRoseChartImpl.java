package com.wine;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Arc2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;

public class DrawWindRoseChartImpl implements IDrawWindRoseChart {

	private DecimalFormat df = new DecimalFormat("#00.00");
	private int circleNumber = 4; // 圆的圈数 = 4;
	private int space = 10; // 方向标注离图形的空隙
	private int edgSpace = 30; // 图形周边留出的空隙大小,此空隙大小必须至少等于3 * space

	public BufferedImage drawYearWindRose(int gWidth, Map<Integer, Double> map, RoseChartTypeEnum chartType) throws Exception {
		int gHeight = gWidth + edgSpace; // 加上edgSpace宽度用来写图形的标题
		BufferedImage image = new BufferedImage(gWidth, gHeight, BufferedImage.TYPE_INT_ARGB);
		Graphics2D g2 = image.createGraphics();
		String type = "";
		if (chartType == RoseChartTypeEnum.YEAR_WIND_DIRECTION)
			type = "风向";
		else if (chartType ==RoseChartTypeEnum.YEAR_WIND_POWER) {
			type = "风能";
		}else{
			throw new RuntimeException("此方法不能画所要求的风玫瑰图！");
		}
		String title = "年" + type + "玫瑰图";
		g2.setBackground(Color.WHITE);
		// 画板
		g2.fillRect(0, 0, gWidth, gHeight);
		// 基准点距离,当x,y坐标都为基准点距离时就是圆心
		int centerPoint = gWidth / 2;
		// 最大圆半径
		int maxRadius = gWidth / 2 - edgSpace;
		// 步长
		double step = maxRadius / circleNumber;
		g2.setColor(Color.BLACK);
		// 西方向在右边，标注会占距离，所以space*2
		g2.drawString("W", centerPoint - maxRadius - 2 * space, centerPoint);
		// 画x轴
		g2.drawLine(centerPoint - maxRadius, centerPoint, centerPoint + maxRadius, centerPoint);
		g2.drawString("E", centerPoint + maxRadius + space, centerPoint);
		g2.drawString("0", centerPoint, centerPoint - maxRadius - space);
		g2.drawString("N", centerPoint, centerPoint - maxRadius - 2 * space);
		// 画y轴
		g2.drawLine(centerPoint, centerPoint - maxRadius, centerPoint, centerPoint + maxRadius);
		// 南方向在下边，标注会占距离，所以space*2
		g2.drawString("180", centerPoint - space, centerPoint + maxRadius + 2 * space);
		g2.drawString("S", centerPoint, centerPoint + maxRadius + 3 * space);
		g2.drawString(title, centerPoint - 3 * space, gHeight - space);
		//不管是否有数据，都必须把坐标及同心圆画上
		for (int i = 1; i <= circleNumber; i++) {
			// step * i即为所画当前圆的半径
			int radius = (int) Math.ceil(step * i) + 1;
			g2.drawOval(centerPoint - radius, centerPoint - radius, radius * 2, radius * 2);
		}
		// 只有当有数据时，才标注圆所代表的比例及画弧
		if (map != null && map.size() > 0) {
			// 最大比率
			double maxRation = Collections.max(map.values());
			// 标注比例
			for (int i = 1; i <= circleNumber; i++) {
				// step * i即为所画当前圆的半径
				int radius = (int) Math.ceil(step * i) + 1;
				int dis = (int) (Math.cos(Math.PI / 4) * radius);
				// 标注圆代表的比例数
				g2.drawString(df.format(maxRation / circleNumber * i * 100)
						+ "%", centerPoint + dis, centerPoint - dis);
			}
			g2.setColor(Color.RED);
			double startAngle = 0.0;
			double arcAngle = -22.5;
			// 画弧
			for (Map.Entry<Integer, Double> entry : map.entrySet()) {
				double arcRadius = Math.rint(entry.getValue() / maxRation * maxRadius);
				int key = entry.getKey();
				// 即是第0风向区，-11.25~11.25
				// 因为awt画弧时0度点与风向玫瑰图的0度点相差90度，所以给画弧的开始点集体加上90度
				if (key == 0)
					startAngle = 90 + 11.25;
				else {
					double angle = -key * 22.5;
					startAngle = angle + 90;
				}
				Arc2D.Double arc = new Arc2D.Double(centerPoint - arcRadius,
						centerPoint - arcRadius, arcRadius * 2, arcRadius * 2,
						startAngle, arcAngle, Arc2D.PIE);
				// 使用awt画弧
				g2.draw(arc);
			}
		}
		g2.dispose();
		return image;
	}

	private void drawOneWindRose(Graphics2D g2, int xOffset, int yOffset,
			int gWidth, Map<Integer, Double> map, int month) throws Exception {
		String title = month + "月";
		// 同心圆圆心坐标
		int xCenter = xOffset + gWidth / 2;
		int yCenter = yOffset + gWidth / 2;
		// 最大圆半径
		int maxRadius = gWidth / 2 - edgSpace;
		// 步长
		double step = maxRadius / circleNumber;
		g2.setColor(Color.BLACK);
		// 西方向在右边，标注会占距离，所以space*2
		g2.drawString("W", xCenter - maxRadius - 2 * space, yCenter);
		// 画x轴
		g2.drawLine(xCenter - maxRadius, yCenter, xCenter + maxRadius, yCenter);
		g2.drawString("E", xCenter + maxRadius + space, yCenter);
		g2.drawString("0", xCenter, yCenter - maxRadius - space);

		g2.drawString("N", xCenter, yCenter - maxRadius - 2 * space);
		// 画y轴
		g2.drawLine(xCenter, yCenter - maxRadius, xCenter, yCenter + maxRadius);
		g2.drawString("180", xCenter - space, yCenter + maxRadius + 2 * space);
		g2.drawString("S", xCenter, yCenter + maxRadius + 3 * space);
		g2.drawString(title, xCenter + maxRadius, yCenter - maxRadius);
		//不管当月是否有数据，都必须把同心圆画上
		for (int i = 1; i <= circleNumber; i++) {
			// step * i即为所画当前圆的半径
			int radius = (int) Math.ceil(step * i) + 1;
			g2.drawOval(xCenter - radius, yCenter - radius, radius * 2, radius * 2);
		}
		// 只有当有数据时，才标注圆所代表的比例及画弧
		if (map != null && map.size() > 0) {
			// 最大比率
			double maxRation = Collections.max(map.values());
			// 标注比例
			for (int i = 1; i <= circleNumber; i++) {
				// step * i即为所画当前圆的半径
				int radius = (int) Math.ceil(step * i) + 1;
				int dis = (int) (Math.cos(Math.PI / 4) * radius);
				// 标注圆代表的比例数
				g2.drawString(df.format(maxRation / circleNumber * i * 100)
						+ "%", xCenter + dis, yCenter - dis);
			}
			g2.setColor(Color.RED);
			double startAngle = 0.0;
			double arcAngle = -22.5;
			for (Map.Entry<Integer, Double> entry : map.entrySet()) {
				double arcRadius = Math.rint(entry.getValue() / maxRation
						* maxRadius);
				int key = entry.getKey();
				// 即是第0风向区，-11.25~11.25
				// 因为awt画弧时0度点与风向玫瑰图的0度点相差90度，所以给画弧的开始点集体加上90度
				if (key == 0)
					startAngle = 90 + 11.25;
				else {
					double angle = -key * 22.5;
					startAngle = angle + 90;
				}
				Arc2D.Double arc = new Arc2D.Double(xCenter - arcRadius,
						yCenter - arcRadius, arcRadius * 2, arcRadius * 2,
						startAngle, arcAngle, Arc2D.PIE);
				// 使用awt画弧
				g2.draw(arc);
			}
		}
	}

	public BufferedImage drawMonthWindRose(int width, Map<Integer, Map<Integer, Double>> map, RoseChartTypeEnum chartType)
			throws Exception {
		//不管有几个月的数据,都画12个图,分四行三列来显示
		//height加上edgSpace用来显示图片的标题
		int height = width * 4 / 3 + edgSpace;
		// 每个月的小玫瑰图所占的宽度,每行或每列的间距为space， 列数值最大为3列,所以只有四个间距。
		int gWidth = (width - space * 4) / 3;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
		Graphics2D g2 = image.createGraphics();
		String type = "";
		if (chartType == RoseChartTypeEnum.MONTH_WIND_DIRECTION)
			type = "风向";
		else if (chartType == RoseChartTypeEnum.MONTH_WIND_POWER) {
			type = "风能";
		}else{
			throw new RuntimeException("此方法不能画所要求的风玫瑰图！");
		}
		String title = "各月的" + type + "玫瑰图";
		// 画板
		g2.fillRect(0, 0, width, height);
		int count = 0;
		int rowNo = 0;
		int colNo = 0;
		int xOffset = 0;
		int yOffset = 0;
		//不管是否有数据，都画12个图，每月一个图
		for(int i = 1; i <= 12; i++){
			rowNo = count / 3;
			colNo = count % 3;
			xOffset = colNo * (gWidth + space) + space;
			yOffset = rowNo * (gWidth + space) + space;
			Map<Integer, Double> dataMap = (map == null || map.size() == 0) ?  null : map.get(i);
			drawOneWindRose(g2, xOffset, yOffset, gWidth, dataMap,
					i);
			count++;
		}
		g2.setColor(Color.BLACK);
		g2.drawString(title, width / 2 - 3 * space, height - 2 * space);
		g2.dispose();
		return image;
	}

	public static void main(String[] args) {
		DrawWindRoseChartImpl drc = new DrawWindRoseChartImpl();
		Map<Integer, Map<Integer, Double>> map = new HashMap<Integer, Map<Integer,Double>>();
		Map<Integer, Double> dmap = new HashMap<Integer, Double>();
		//dmap.put(100, 100d);
		//dmap.put(200, 100d);
		map.put(10, dmap);
		try {
//			BufferedImage bi = drc.drawMonthWindRose(300, map, RoseChartTypeEnum.MONTH_WIND_DIRECTION);
			BufferedImage bi = drc.drawYearWindRose(300, dmap, RoseChartTypeEnum.YEAR_WIND_DIRECTION);
			
			FileOutputStream output = new FileOutputStream(new File("/home/hok/test.jpg"));
			ImageIO.write(bi, "JPEG", output);
			System.out.println("===>>");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}