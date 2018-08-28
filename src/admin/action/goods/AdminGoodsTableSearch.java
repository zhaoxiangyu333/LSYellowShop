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


public class AdminGoodsTableSearch extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServlet servlet = new AdminServlet();

		HttpSession session = request.getSession();
		Page<Good> page = null;
		if (session.getAttribute("goodPage") == null) {
			page = new Page<>(50);
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

		String search = request.getParameter("search");
		String searchTime = "";
		String keyword = "";
		if (!search.equals("//")) {
			String[] searchs = search.split("//");
			if (searchs.length==1){
				searchTime = searchs[0];
			} else {
				searchTime = searchs[0];
				keyword = searchs[1];
			}
		}

		servlet.queryGoodsTableBySearch(page, searchTime, keyword);


		request.getRequestDispatcher("/WEB-INF/admin/goods/goodslist.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
