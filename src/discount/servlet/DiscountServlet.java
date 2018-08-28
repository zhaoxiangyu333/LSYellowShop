package discount.servlet;

import discount.dao.DiscountDao;
import good.vo.Good;

import java.util.List;

public class DiscountServlet {
	public List<Good> queryDiscountLists() {
		return  new DiscountDao().queryDiscountLists();
	}
}
