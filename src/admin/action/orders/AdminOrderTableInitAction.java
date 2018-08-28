package admin.action.orders;

import admin.servlet.AdminServlet;
import admin.vo.Page;
import good.vo.Good;
import user.vo.UserOrderGoods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class AdminOrderTableInitAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AdminServlet servlet = new AdminServlet();

		HttpSession session = request.getSession();
		Page<UserOrderGoods> page = null;
		if (session.getAttribute("orderPage") == null) {
			page = new Page<>(5);
			session.setAttribute("orderPage", page);
		} else {
			page = (Page<UserOrderGoods>) session.getAttribute("orderPage");
		}

		//// 处理当前页数
		String type = request.getParameter("type");


		if (type == null) {

		} else {
			if (type.equals("next")) {
				page.setCurrentPage(page.getCurrentPage() + 1);
			} else if (type.equals("previous")) {
				page.setCurrentPage(page.getCurrentPage() - 1);
			}

		}

		servlet.queryOrderTable(page);

		String orderId = request.getParameter("orderId");
		if (orderId != null) {
			request.setAttribute("orderId", orderId);
		}

		request.getRequestDispatcher("/WEB-INF/admin/orders/order.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
