package admin.action.goods;

import admin.servlet.AdminServlet;
import good.vo.Good;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AdminUpdateGoods extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		String goods_name = request.getParameter("goods_name");
		double goods_weight = Double.parseDouble(request.getParameter("goods_weight"));
		double goods_price = Double.parseDouble(request.getParameter("goods_price"));
		int goods_number = Integer.parseInt(request.getParameter("goods_number"));
		String prod_id = request.getParameter("prod_id");
		String goods_introduce = request.getParameter("goods_introduce");

		Good good = new Good(id, goods_name, goods_weight, goods_price, goods_number, prod_id, goods_introduce);

		AdminServlet servlet = new AdminServlet();
		servlet.updateGoodsInfo(good);

		// 转发被更新的商品信息
		String whcName = request.getParameter("whcName");
		request.setAttribute("whcName", whcName);

		request.getRequestDispatcher("/AdminGoodsTableInitAction").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
