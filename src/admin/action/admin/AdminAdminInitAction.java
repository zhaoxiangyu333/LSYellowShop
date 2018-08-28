package admin.action.admin;

import admin.servlet.AdminServlet;
import admin.vo.Admin;
import admin.vo.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class AdminAdminInitAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServlet servlet = new AdminServlet();

		HttpSession session = request.getSession();
		Page<Admin> page = null;
		if (session.getAttribute("adminPage") == null) {
			page = new Page<>(5);
			session.setAttribute("adminPage", page);
		} else {
			page = (Page<Admin>) session.getAttribute("adminPage");
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

		servlet.queryAdminTable(page);


		request.getRequestDispatcher("/WEB-INF/admin/user/admin.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
