package ajax;

import good.servlet.GoodServlet;
import good.vo.Good;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class RefreshTag extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		GoodServlet servlet = new GoodServlet();
		List<Good> list = servlet.queryOntTypeGoods(type);

		PrintWriter writer = response.getWriter();

		StringBuffer buffer = new StringBuffer();

		for (int i=0;i<list.size();i++){
			if (i==list.size()-1){
				buffer.append(list.get(i).getGoodsName()+"\t"+list.get(i).getGoodsPrice()+"\t"+list.get(i).getGoodsImage());
			} else{
				buffer.append(list.get(i).getGoodsName()+"\t"+list.get(i).getGoodsPrice()+"\t"+list.get(i).getGoodsImage()+"\n");
			}

		}

		writer.print(buffer);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
