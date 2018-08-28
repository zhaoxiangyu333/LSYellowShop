package admin.action;

import admin.servlet.AdminServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdminTableUpdate extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int updataId = Integer.parseInt(request.getParameter("updataId"));
		String updataThing = request.getParameter("updataThing");
		String updataVal = request.getParameter("updataVal");

		AdminServlet servlet = new AdminServlet();
		servlet.updataGoodsTable(updataThing,updataId,updataVal);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
