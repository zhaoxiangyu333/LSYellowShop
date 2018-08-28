package admin.action.orders;

import admin.servlet.AdminServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AdminOrderTableDeleteAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String orderId = request.getParameter("orderId");

		AdminServlet servlet = new AdminServlet();
		servlet.deleteOrder(id);

		request.setAttribute("orderId", orderId);
		request.getRequestDispatcher("/AdminOrderTableInitAction").forward(request, response);

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
