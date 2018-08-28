package good.action;

import good.servlet.GoodServlet;
import good.vo.Good;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class QueryGoodsAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String queryinfo = request.getParameter("queryinfo");
        String search_category = request.getParameter("search_category");


        if (queryinfo != "") {
            GoodServlet servlet = new GoodServlet();
            Good good = servlet.queryoneGoodByTitle(queryinfo, search_category);
            if (good == null) {
                request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request,response);
            } else {
                request.setAttribute("good", good);
                request.getRequestDispatcher("/WEB-INF/simproduct.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("/WEB-INF/shop.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
