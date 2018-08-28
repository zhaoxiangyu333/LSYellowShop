package skip;

import user.servlet.UserServlet;
import user.vo.User;
import user.vo.UserOrderGoods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SkipCheckoutAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		UserServlet userServlet = new UserServlet();
		List<UserOrderGoods> orderList = userServlet.queryAllOrders(user.getUserName());
		request.getSession().setAttribute("orderList", orderList);
		request.getRequestDispatcher("/WEB-INF/myaccount/checkout.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
