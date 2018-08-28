package admin.action.admin;

import admin.servlet.AdminServlet;
import admin.vo.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AdminAddAdmin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adminName = request.getParameter("adminName");
		String adminPasswd = request.getParameter("adminPasswd");

		AdminServlet servlet = new AdminServlet();

		Admin admin = new Admin(adminName, adminPasswd);
		servlet.addAdmin(admin);

		request.getRequestDispatcher("/AdminAdminInitAction").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
