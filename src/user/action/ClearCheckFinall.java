package user.action;

import user.servlet.UserServlet;
import user.vo.UserOrderGoods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ClearCheckFinall extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GetPayReply.ifGet2 = false;

        String delivergoodaddress = String.valueOf(request.getSession().getAttribute("delivergoodaddress"));
        System.out.println(delivergoodaddress);
        UserServlet servlet = new UserServlet();
        List<UserOrderGoods> needList = servlet.clearCheckout(request, delivergoodaddress);
        if (needList.size() == 0) {
            request.getRequestDispatcher("/AddGoodsToCartAfter").forward(request, response);
        } else {
            request.setAttribute("needList", needList);
            request.getRequestDispatcher("/CartInitAction").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
