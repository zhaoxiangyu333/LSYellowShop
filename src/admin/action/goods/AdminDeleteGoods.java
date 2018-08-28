package admin.action.goods;

import admin.servlet.AdminServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AdminDeleteGoods extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		AdminServlet servlet = new AdminServlet();
		servlet.deleteGood(id);

		String whcNameDelete = request.getParameter("whcNameDelete");
		request.setAttribute("whcNameDelete",whcNameDelete);

		request.getRequestDispatcher("/AdminGoodsTableInitAction").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
