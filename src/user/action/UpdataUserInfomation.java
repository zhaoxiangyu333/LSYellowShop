package user.action;


import user.servlet.UserServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdataUserInfomation extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("account_first_name");
		String email = request.getParameter("account_email");
		String passwd = request.getParameter("password_2");

		UserServlet servlet = new UserServlet();
		servlet.updataInfomation(userName, email, passwd);

		request.getRequestDispatcher("/LoginOutAction").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
