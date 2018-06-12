package com.wine.web.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetCheckCodeImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doGet(req, res);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 清除缓存
		res.setHeader("Pragma", "No-cache");
		res.setHeader("Cache-Control", "no-cache");
		res.setDateHeader("Expire", 0);
		// 表明生成的响应的是图片
		res.setContentType("image/jpeg");
		// 指定验证码图片的大小
		int width = 85;
		int height = 22;
		// 生成一张新图片
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 在图片中绘制内容
		Graphics g = image.getGraphics();
		Random random = new Random();
		g.setColor(getRandColor(200, 250));
		g.fillRect(1, 1, width - 1, height - 1);
		g.setColor(new Color(102, 102, 102, 102));
		g.drawRect(0, 0, width - 1, height - 1);
		Font mFont = new Font("Times New Roman",Font.BOLD,18);
		g.setFont(mFont );
		// 随机生成线条，让图片看起来更加杂乱
		g.setColor(getRandColor(160, 200));

		for (int i = 0; i < 155; i++) {
			int x1 = random.nextInt(width - 1);
			int y1 = random.nextInt(height - 1);
			int x2 = random.nextInt(6) + 1;
			int y2 = random.nextInt(12) + 1;
			g.drawLine(x1, y1, x2 + x1, y2 + y1);
		}

		// 从另一方向画随机线
		for (int i = 0; i < 70; i++) {
			int x1 = random.nextInt(width - 1);
			int y1 = random.nextInt(height - 1);
			int x2 = random.nextInt(6) + 1;
			int y2 = random.nextInt(12) + 1;
			g.drawLine(x1, y1, x1 - x2, y1 - y2);
		}

		// 生成随机数，并将随机数转化成字母
		String sRand = "";
		for (int i = 0; i < 4; i++) {

			// 取得一个随机字符
			String temp = getRandChar();
			sRand += temp;

			// 将系统生成的随机字符添加到图形验证码图片上
			g.setColor(new Color(20 + random.nextInt(110), 20 + random
					.nextInt(110), 20 + random.nextInt(110)));
			g.drawString(String.valueOf(temp), 15 * i + 10, 16);
		}
		// 将验证码保存在session中
		HttpSession session = req.getSession(true);
		session.setAttribute("Val", sRand);
		g.dispose();
		// 输出图形验证码
		ImageIO.write(image, "JPEG", res.getOutputStream());

	}

	private Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255) {
			fc = 255;
		}
		if (bc > 255) {
			bc = 255;
		}
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

	// 生成随机字符
	private String getRandChar() {
		int rand = (int) Math.round(Math.random() * 2);
		long item = 0;
		char ctmp = '\0';
		// 根据rand的值决定是生成一个大写字母、小写字母还是数字
		switch (rand) {
		// 生成大写字母
		case 1:
			item = Math.round(Math.random() * 25 + 65);
			ctmp = (char) item;
			return String.valueOf(ctmp);
			// 生成小写字母
		case 2:
			item = Math.round(Math.random() * 25 + 97);
			ctmp = (char) item;
			return String.valueOf(ctmp);
			// 生成数字
		default:
			item = Math.round(Math.random() * 9);
			ctmp = (char) item;
			return String.valueOf(item);
		}
	}
}
