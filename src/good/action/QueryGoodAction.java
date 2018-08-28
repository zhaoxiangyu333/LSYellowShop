package good.action;

import good.servlet.GoodServlet;
import good.vo.Good;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class QueryGoodAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodName = request.getParameter("goodName");

		GoodServlet servlet = new GoodServlet();
		Good good = servlet.queryoneGood(goodName);
		request.setAttribute("good", good);

		String type = request.getParameter("type");
		if (type == null) {
			type = servlet.queryTypeFormGoods(good);
		}

		//查询相关的产品
		List<Good> list = servlet.queryOntTypeGoods(type);
		request.setAttribute("list", list);

		request.getRequestDispatcher("/WEB-INF/simproduct.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
