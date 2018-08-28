package admin.servlet;

import admin.dao.AdminDao;
import admin.vo.Admin;
import admin.vo.LoginInfo;
import admin.vo.Page;
import good.vo.Good;
import user.vo.User;
import user.vo.UserOrderGoods;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class AdminServlet {
	public List<LoginInfo> getDayLoginInfo() {
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String string = format.format(date);
		return new AdminDao().getLoginInfomation(string);
	}

	public List<LoginInfo> getAllLoginInfo() {
		return new AdminDao().getLoginInfomation(null);
	}

	public void queryGoodsTable(Page<Good> page) {
		AdminDao adminDao = new AdminDao();
		if (page.getPageNum() == 0) {
			int totalSize = adminDao.queryGoodsTableTotalSize();
			page.setTotalSize(totalSize);
		}
		adminDao.queryGoodsTable(page);
	}

	public void queryOrderTable(Page<UserOrderGoods> page) {
		AdminDao adminDao = new AdminDao();
		if (page.getPageNum() == 0) {
			int totalSize = adminDao.queryOrderTableTotalSize();
			page.setTotalSize(totalSize);
		}

		adminDao.queryOrderTable(page);
	}

	public void updataGoodsTable(String updataThing, int updataId, String updataVal) {
		new AdminDao().updataGoodsTable(updataThing, updataId, updataVal);
	}

	public void queryUserTable(Page<User> page) {
		AdminDao adminDao = new AdminDao();
		if (page.getPageNum() == 0) {
			int totalSize = adminDao.queryUserTableTotalSize();
			page.setTotalSize(totalSize);
		}

		adminDao.queryUserTable(page);
	}

	public void updateUserInfo(User user) {
		new AdminDao().updateUserInfo(user);
	}

	public void deleteUser(int id) {
		new AdminDao().deleteUser(id);
	}

	public void updateGoodsInfo(Good good) {
		new AdminDao().updateGoodsInfo(good);
	}

	public void deleteGood(int id) {
		new AdminDao().deleteGood(id);
	}

	public void addGoods(Good good) {
		new AdminDao().addGoods(good);
	}

	public void queryGoodsTableBySearch(Page<Good> page, String searchTime, String keyword) {
		AdminDao adminDao = new AdminDao();
		if (page.getPageNum() == 0) {
			int totalSize = adminDao.queryGoodsTableTotalSize();
			page.setTotalSize(totalSize);
		}
		adminDao.queryGoodsTable(page);


		Date tmp_date = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date sql_date = null;

		if (!searchTime.equals("")) {
			try {
				tmp_date = format.parse(searchTime);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			sql_date = new java.sql.Date(tmp_date.getTime());
		}

		adminDao.queryGoodsTableBySearch(page, sql_date, keyword);
	}

	public void queryAdminTable(Page<Admin> page) {
		AdminDao adminDao = new AdminDao();
		if (page.getPageNum() == 0) {
			int totalSize = adminDao.queryAdminTableTotalSize();
			page.setTotalSize(totalSize);
		}
		adminDao.queryAdminTable(page);
	}

	public void updateAdminInfo(Admin admin) {
		new AdminDao().updateAdminInfo(admin);
	}

	public void deleteAdmin(int id) {
		new AdminDao().deleteAdmin(id);
	}

	public void addAdmin(Admin admin) {
		new AdminDao().addAdmin(admin);
	}

	public Admin loginAdmin(String userName, String userPass) {
		return new AdminDao().loginAdmin(userName, userPass);
	}

	public void deleteOrder(int id) {
		new AdminDao().deleteOrder(id);
	}
}
