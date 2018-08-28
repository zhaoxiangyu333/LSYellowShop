package init.servlet;

import init.vo.User;
import user.dao.UserDao;

import java.util.List;
import java.util.Map;

public class UserServlet {
	public Map<User, List<String>> getAllComment() {
		return new UserDao().getAllComment();
	}
}
