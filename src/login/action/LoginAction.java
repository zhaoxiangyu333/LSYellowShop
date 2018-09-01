package login.action;

import admin.servlet.AdminServlet;
import admin.vo.Admin;
import good.vo.Good;
import init.recommend.dao.RecommendDao;
import login.servlet.LoginServlet;
import user.servlet.UserServlet;
import user.vo.User;
import user.vo.UserOrderGoods;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class LoginAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RecommendDao recommendDao = new RecommendDao();
        recommendDao.initRecommendFromMysql();

        String userName = request.getParameter("userName");
        String userPass = request.getParameter("userPass");

        LoginServlet servlet = new LoginServlet();
        User user = servlet.loginUser(userName, userPass);
        request.getSession().setAttribute("user", user);

        AdminServlet servlet1 = new AdminServlet();
        Admin admin = servlet1.loginAdmin(userName, userPass);
        request.getSession().setAttribute("admin", admin);


        if (user == null) {
            if (admin == null) {
                request.setAttribute("errorInfo", "用户名或者密码错误");
                request.getRequestDispatcher("/WEB-INF/login/index.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/AdminInitAction").forward(request, response);
            }
        } else {
            UserServlet userServlet = new UserServlet();
            List<UserOrderGoods> orderList = userServlet.queryAllOrders(userName);
            List<UserOrderGoods> orderAllList = userServlet.queryOrders(userName);

//            FIXME:切换本地开发需注释
            List<Good> recommendGoods = userServlet.getRecommendGoods(user.getUserId());

            request.getSession().setAttribute("orderList", orderList);
            request.getSession().setAttribute("orderAllList", orderAllList);
            //            FIXME:切换本地开发需注释
            request.getSession().setAttribute("recommendGoods", recommendGoods);
//
            // 跳转到登录界面前的url
            String reUrl = String.valueOf(request.getSession().getAttribute("reUrl"));

//            FIXME:切换本地开发需注释
            if (reUrl.endsWith("/Shop/")) {
                reUrl = "";
            } else if (reUrl.endsWith("/LoginOutAction")) {
                reUrl = "";
            } else {
                int num = reUrl.indexOf("/Shop/");
                reUrl = reUrl.substring(num + 6);
            }


//            if (reUrl.endsWith("8080/")) {
//                reUrl = "";
//            } else if (reUrl.endsWith("/LoginOutAction")) {
//                reUrl = "";
//            } else {
//                int num = reUrl.indexOf("8080/");
//                reUrl = reUrl.substring(num + 5);
//            }


            request.getRequestDispatcher(reUrl).forward(request, response);
        }


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
