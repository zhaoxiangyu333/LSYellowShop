package user.servlet;

import good.vo.Good;
import user.dao.UserDao;
import user.vo.User;
import user.vo.UserOrderGoods;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class UserServlet {
	public List<UserOrderGoods> queryAllOrders(String userName) {
		return new UserDao().queryAllOrders(userName);
	}

	public List<UserOrderGoods> queryOrders(String userName) {
		return new UserDao().queryOrders(userName);
	}

	public void updataInfomation(String userName, String email, String passwd) {
		new UserDao().updataInfomation(userName, email, passwd);
	}

	public void addCart(Good good, User user) {
		new UserDao().addCart(good, user);
	}

	public List<UserOrderGoods> clearCheckout(HttpServletRequest request, String billing_address_1) {
		return new UserDao().clearCheckout(request, billing_address_1);
	}

	public void addUser(User user) {
		new UserDao().addUser(user);
	}

	public boolean userIfExist(String userName) {
		return new UserDao().userIfExist(userName);
	}

	public void updateOrder(int id, int newNum, double newSum) {
		new UserDao().updateOrder(id, newNum, newSum);
	}
}
