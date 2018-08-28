package admin.action;

import admin.servlet.AdminServlet;
import admin.vo.LoginInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class AdminInitAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminServlet servlet = new AdminServlet();
		List<LoginInfo> dayLoginInfo = servlet.getDayLoginInfo();
		List<LoginInfo> allLoginInfo = servlet.getAllLoginInfo();


		Map<String, Integer> loginMap = new HashMap<>();

		for (LoginInfo loginInfo : allLoginInfo) {
			for (Map.Entry<String, Integer> entry : loginMap.entrySet()) {
				if (entry.getKey().toString().equals(loginInfo.getYear())) {
					entry.setValue(Integer.valueOf(entry.getValue() + 1));
					break;
				} else {
					loginMap.put(loginInfo.getYear(), 1);
					break;
				}
			}

			if (loginMap.size() == 0) {
				loginMap.put(loginInfo.getYear(), 1);
			}
		}

		Map<String, Integer> loginMap2 = new TreeMap<>(new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				return o1.compareTo(o2);
			}
		});

		for (Map.Entry<String, Integer> entry : loginMap.entrySet()) {
			loginMap2.put(entry.getKey(), entry.getValue());
		}

		request.getSession().setAttribute("dayLoginInfo", dayLoginInfo);
		request.getSession().setAttribute("dayLoginInfoSize", dayLoginInfo.size());
		request.getSession().setAttribute("allLoginInfoSize", allLoginInfo.size());
		request.getSession().setAttribute("allLoginInfo", allLoginInfo);
		request.getSession().setAttribute("loginMap", loginMap2);

		// 当前在线人数，通过ajax来刷新
		request.getServletContext().getAttribute("onLineNum");

		request.getRequestDispatcher("/WEB-INF/admin/index.jsp").forward(request, response);

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
