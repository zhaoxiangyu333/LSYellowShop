package user.action;

import user.servlet.UserServlet;
import user.vo.UserOrderGoods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ClearCheck extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String billing_address_1 = request.getParameter("billing_address_1");
		String address_select = request.getParameter("address_select");

		billing_address_1=address_select+"-"+billing_address_1;

		UserServlet servlet = new UserServlet();
		List<UserOrderGoods> needList = servlet.clearCheckout(request, billing_address_1);
		if (needList.size() == 0) {
			request.getRequestDispatcher("/AddGoodsToCartAfter").forward(request, response);
		} else {
			request.setAttribute("needList", needList);
			request.getRequestDispatcher("/CartInitAction").forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
