package admin.action.admin;

import admin.servlet.AdminServlet;
import admin.vo.Admin;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AdminUpdateAdminInfo extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServlet servlet = new AdminServlet();

		int id = Integer.parseInt(request.getParameter("id"));
		String adminName = request.getParameter("adminName");
		String adminPasswd = request.getParameter("adminPasswd");

		Admin admin = new Admin(id, adminName, adminPasswd);

		servlet.updateAdminInfo(admin);
		request.getRequestDispatcher("/AdminAdminInitAction").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
