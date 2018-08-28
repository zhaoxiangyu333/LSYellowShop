package login.servlet;

import login.dao.LoginDao;
import user.vo.User;

public class LoginServlet {
	public User loginUser(String userName, String userPass) {
		return new LoginDao().loginUser(userName,userPass);
	}
}
