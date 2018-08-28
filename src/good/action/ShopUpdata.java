package good.action;

import good.servlet.GoodServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ShopUpdata extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String shopId = request.getParameter("shopId");

        GoodServlet servlet = new GoodServlet();
        String goodsString = servlet.queryGoodsByCat(shopId);


        response.getWriter().write(goodsString);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
