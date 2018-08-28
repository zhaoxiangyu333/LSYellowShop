package login.imagecode;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class ImageCodeJudgeAction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("application/json");
		// 处理AJAX请求
		HttpSession session = request.getSession();
		String value = (String) session.getAttribute("data");
		Code code = new Code();
		code.setCode(value);

		Gson gson = new Gson();
		String returnValue = gson.toJson(code);
		PrintWriter writer = response.getWriter();
		writer.print(returnValue);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}

class Code {
	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
}
