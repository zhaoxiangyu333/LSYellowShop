package user.action;

import good.servlet.GoodServlet;
import good.vo.Good;
import user.servlet.UserServlet;
import user.vo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddGoodsToCart extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodsName = request.getParameter("goodsName");

		GoodServlet goodServlet = new GoodServlet();
		Good good = goodServlet.queryoneGood(goodsName);

		User user = (User) request.getSession().getAttribute("user");


		UserServlet userServlet = new UserServlet();
		userServlet.addCart(good, user);
		request.getRequestDispatcher("/AddGoodsToCartAfter").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
