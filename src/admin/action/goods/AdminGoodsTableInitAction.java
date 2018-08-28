package admin.action.goods;

import admin.servlet.AdminServlet;
import admin.vo.Page;
import good.vo.Good;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


public class AdminGoodsTableInitAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServlet servlet = new AdminServlet();

		HttpSession session = request.getSession();
		Page<Good> page = null;
		if (session.getAttribute("goodPage") == null) {
			page = new Page<>(5);
			session.setAttribute("goodPage", page);
		} else {
			page = (Page<Good>) session.getAttribute("goodPage");
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

		servlet.queryGoodsTable(page);

		String whcName = request.getParameter("whcName");
		if (whcName != null) {
			request.setAttribute("whcName", whcName);
		}

		String whcNameDelete = request.getParameter("whcNameDelete");
		if (whcNameDelete != null) {
			request.setAttribute("whcNameDelete", whcNameDelete);
		}

		String addGoodName = request.getParameter("addGoodName");
		if (addGoodName != null) {
			request.setAttribute("addGoodName", addGoodName);
		}

		String imageUpload = request.getParameter("imageUpload");
		if (imageUpload!=null) {
			request.setAttribute("imageUpload", imageUpload);
		}

		request.getRequestDispatcher("/WEB-INF/admin/goods/goodslist.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
