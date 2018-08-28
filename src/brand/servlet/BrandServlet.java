package brand.servlet;

import brand.dao.BrandDao;
import brand.vo.Brand;

import java.util.List;

public class BrandServlet {
	public List<Brand> queryBrandLists() {
		return  new BrandDao().queryBrandLists();
	}
}
