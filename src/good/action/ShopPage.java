package good.action;

import admin.vo.Page;
import good.servlet.GoodServlet;
import good.vo.Good;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ShopPage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeCat = request.getParameter("typeCat");
        GoodServlet servlet = new GoodServlet();
        Page<Good> page = null;
        if (request.getSession().getAttribute("goodPage") == null) {
            page = new Page<>(9);
            request.getSession().setAttribute("goodPage", page);
        } else {
            page = (Page<Good>) request.getSession().getAttribute("goodPage");
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

        servlet.queryAllGoods(page,typeCat);


        request.getRequestDispatcher("/WEB-INF/shop.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
