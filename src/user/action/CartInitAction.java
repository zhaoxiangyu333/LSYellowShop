package user.action;

import user.servlet.UserServlet;
import user.vo.User;
import user.vo.UserOrderGoods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CartInitAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GetPayReply.ifGet2 = false;
		UserServlet servlet = new UserServlet();
		User user = (User) request.getSession().getAttribute("user");
		List<UserOrderGoods> orderList = servlet.queryAllOrders(user.getUserName());
		request.getSession().setAttribute("orderList", orderList);
		request.getRequestDispatcher("/WEB-INF/myaccount/cart.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
