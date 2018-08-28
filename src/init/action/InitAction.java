package init.action;

import admin.vo.Page;
import brand.servlet.BrandServlet;
import brand.vo.Brand;
import discount.servlet.DiscountServlet;
import good.servlet.GoodServlet;
import good.vo.Good;
import init.servlet.UserServlet;
import init.vo.User;
import pro.vo.Pro;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class InitAction extends HttpServlet {
    GoodServlet servlet3 = null;

    @Override
    public void init() throws ServletException {
        List<Good> list = null;
        List<Brand> list2 = null;
        List<Good> tvList = null;
        List<Pro> pros = null;

        Map<User, List<String>> coomentMap = null;
        DiscountServlet servlet = new DiscountServlet();
        list = servlet.queryDiscountLists();

        BrandServlet servlet2 = new BrandServlet();
        list2 = servlet2.queryBrandLists();


        servlet3 = new GoodServlet();
        tvList = servlet3.queryOntTypeGoods("电视");

        UserServlet userServlet = new UserServlet();
        coomentMap = userServlet.getAllComment();

        pros = servlet3.queryAllPro();


        // 折扣
        this.getServletContext().setAttribute("discountList", list);
        //品牌
        this.getServletContext().setAttribute("brandList", list2);
        //标签页商品列表
        this.getServletContext().setAttribute("tvList", tvList);
        //评论列表
        this.getServletContext().setAttribute("coomentMap", coomentMap);
        // 商品类别
        this.getServletContext().setAttribute("pros", pros);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //查询所有商品并分页
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

        servlet3.queryAllGoods(page,null);


        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
