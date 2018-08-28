package admin.action.user;

import admin.servlet.AdminServlet;
import user.vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AdminUpdateUserInfo extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServlet servlet = new AdminServlet();

		int id = Integer.parseInt(request.getParameter("id"));
		String userName = request.getParameter("userName");
		String userImage = request.getParameter("userImage");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String sex = request.getParameter("sex");
		String passRemark = request.getParameter("passRemark");

		User user = new User(id, userName, userImage, email, phone, sex, passRemark);

		servlet.updateUserInfo(user);
		request.getRequestDispatcher("/AdminUserInitAction").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
