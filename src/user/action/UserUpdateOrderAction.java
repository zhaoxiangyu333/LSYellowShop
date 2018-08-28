package user.action;

import user.servlet.UserServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserUpdateOrderAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("whcId"));
		int newNum = Integer.parseInt(request.getParameter("newNum"));
		double newSum = Double.parseDouble(request.getParameter("newSum"));

		System.out.println(newSum);

		UserServlet servlet = new UserServlet();
		servlet.updateOrder(id,newNum,newSum);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
