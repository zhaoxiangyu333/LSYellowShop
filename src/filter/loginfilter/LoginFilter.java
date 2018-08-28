package filter.loginfilter;


import user.vo.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		User user = (User) request.getSession().getAttribute("user");

		String reUrl = String.valueOf(request.getHeader("referer"));
		request.getSession().setAttribute("reUrl",reUrl);

		if (user == null) {
			request.getRequestDispatcher("/WEB-INF/login/index.jsp").forward(request, response);
		} else {
			chain.doFilter(req, resp);
		}

	}

	@Override
	public void init(FilterConfig config) throws ServletException {

	}

}
