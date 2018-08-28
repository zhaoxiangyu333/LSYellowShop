package admin.action.goods;

import admin.servlet.AdminServlet;
import good.vo.Good;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class AdminAddGoods extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goods_name = null;
		double goods_weight = 0;
		double goods_price = 0;
		int goods_number = 0;
		String prod_id = null;
		String goods_introduce = null;
		String goods_image = null;
		Date create_time = null;

		goods_name = request.getParameter("goods_name");
		goods_weight = Double.parseDouble(request.getParameter("goods_weight"));
		goods_price = Double.parseDouble(request.getParameter("goods_price"));
		goods_number = Integer.parseInt(request.getParameter("goods_number"));
		prod_id = request.getParameter("prod_id");
		goods_introduce = request.getParameter("goods_introduce");
		goods_image = request.getParameter("goods_image");
		goods_image = "images/upload/" + goods_image;
		String create_time_str = request.getParameter("create_time");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date tmp_date = format.parse(create_time_str);
			create_time = new Date(tmp_date.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}


		Good good = new Good(0, goods_name, goods_weight, goods_price, goods_number, prod_id, goods_introduce, goods_image, create_time);

		AdminServlet servlet = new AdminServlet();
		servlet.addGoods(good);

		String addGoodName = goods_name;
		request.setAttribute("addGoodName", addGoodName);


		request.getRequestDispatcher("/AdminGoodsTableInitAction").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
