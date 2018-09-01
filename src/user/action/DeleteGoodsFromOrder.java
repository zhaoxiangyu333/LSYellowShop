package user.action;

import user.servlet.UserServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteGoodsFromOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int removeId = Integer.parseInt(request.getParameter("removeId"));

        UserServlet servlet = new UserServlet();
        servlet.deleteGoodsFromOrder(removeId);

        request.getRequestDispatcher("/CartInitAction").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
