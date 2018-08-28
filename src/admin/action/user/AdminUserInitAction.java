package admin.action.user;

import admin.servlet.AdminServlet;
import admin.vo.Page;
import good.vo.Good;
import user.vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


public class AdminUserInitAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServlet servlet = new AdminServlet();

		HttpSession session = request.getSession();
		Page<User> page = null;
		if (session.getAttribute("userPage") == null) {
			page = new Page<>(5);
			session.setAttribute("userPage", page);
		} else {
			page = (Page<User>) session.getAttribute("userPage");
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

		servlet.queryUserTable(page);

		request.getRequestDispatcher("/WEB-INF/admin/user/user.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
