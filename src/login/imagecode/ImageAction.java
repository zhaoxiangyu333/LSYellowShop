package login.imagecode;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

public class ImageAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Random random = new Random();
		String string = "0123456789abcdefghijklmnopqrstuvwxyz";
		BufferedImage image = new BufferedImage(80, 40, BufferedImage.TYPE_INT_RGB);
		Graphics graphics = image.getGraphics();
		// 填充整个图片
		graphics.fillRect(0, 0, 80, 80);
		// 验证码划线混淆作用
		//for (int i = 0; i < 10; i++) {
		//	int x1 = random.nextInt(20);
		//	int y1 = random.nextInt(40);
		//
		//	int x2 = random.nextInt(60) + 20;
		//	int y2 = random.nextInt(40);
		//	graphics.setColor(new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256)));
		//	graphics.drawLine(x1, y1, x2, y2);
		//}
		//// 接线来画笔产生便宜
		//graphics.translate(5, 5);
		StringBuffer stringBuffer = new StringBuffer();
		//选取随机字符
		for (int i = 0; i < 4; i++) {
			char ch = string.charAt(random.nextInt(string.length()));
			String str = String.valueOf(ch);
			int type = 0;
			if (random.nextBoolean()) {
				str = str.toUpperCase();
				type = Font.ITALIC;
			} else {
				type = Font.PLAIN;
			}
			graphics.setFont(new Font("@华文隶书", type, 18));
			graphics.setColor(new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256)));
			graphics.drawString(str, i * 18, 25);
			stringBuffer.append(str);
		}

		HttpSession session = request.getSession();
		session.setAttribute("data", stringBuffer.toString().toLowerCase());
		graphics.dispose();
		ImageIO.write(image, "JPEG", response.getOutputStream());
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
