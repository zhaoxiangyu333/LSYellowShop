package user.action;

import com.alipay.demo.trade.Main;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ClearCheck extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String billing_address_1 = request.getParameter("billing_address_1");
        String address_select = request.getParameter("address_select");

        billing_address_1 = address_select + "-" + billing_address_1;

        request.getSession().setAttribute("delivergoodaddress", billing_address_1);
        double orderSum = Double.parseDouble(request.getParameter("orderSumA"));

        String paht = request.getServletContext().getRealPath("/");

        Main main = new Main();

        String imageoutput = main.test_trade_precreate(orderSum, paht + "images/2003");

        int numL = imageoutput.indexOf("images/2003");

        if (numL == -1) {
            request.setAttribute("getError", "请求支付失败，请重新下单");
        } else {
            imageoutput = imageoutput.substring(numL);

        }


        request.setAttribute("imageoutput", imageoutput);

        request.getRequestDispatcher("/WEB-INF/myaccount/payimage.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
