package com.wine.compass;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Arc2D;
import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;

import com.wine.RoseChartTypeEnum;

public class HelloApplet extends Applet {

    private static final long serialVersionUID = 5511892956119084309L;
    private int edgSpace = 30; // 图形周边留出的空隙大小,此空隙大小必须至少等于3 * space'
	private int circleNumber = 4; // 圆的圈数 = 4;
	private int space = 10; // 方向标注离图形的空隙
	private DecimalFormat df = new DecimalFormat("#00.00");
	private Graphics2D g2 = null;
	Map<Integer, Double> map = new HashMap<Integer, Double>();
	
    public Graphics2D getG2() {
		return g2;
	}

	public void setG2(Graphics2D g2) {
		this.g2 = g2;
	}

	@Override
    public void init() {
        Graphics g = this.getGraphics();
       // paint(g);
        
        
        try {
			drawYearWindRose(200, map , RoseChartTypeEnum.YEAR_WIND_DIRECTION);
		} catch (Exception e) {
			e.printStackTrace();
		}
        System.out.println("========ss=====");
		paint(g);
		System.out.println("=============");
    }

    public void paint(Graphics g) {
        //g.drawString("Hello Applet!", 45, 45);
//    	try {
//			g.drawImage(drawYearWindRose(200, map , RoseChartTypeEnum.YEAR_WIND_DIRECTION), 10, 10, null);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
    	CompassDemo panel = new CompassDemo();
    	panel.setVisible(true);
    	
    	BufferedImage image;
		try {
			image = ImageIO.read(new FileInputStream("/home/hok/temp/compass.jpg"));
		  	g.drawImage(image, 10, 10, this);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
  
    	//g.draw3DRect(30, 40, 300, 300, false);
    }
    
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
		setG2(g2);
		//g2.dispose();
		return image;
	}
}
