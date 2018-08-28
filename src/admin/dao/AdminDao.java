package admin.dao;

import admin.vo.Admin;
import admin.vo.LoginInfo;
import admin.vo.Page;
import good.vo.Good;
import user.vo.User;
import user.vo.UserOrderGoods;
import utility.DataSourceConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminDao {
	private Connection conn = null;
	private PreparedStatement stat = null;
	private ResultSet set = null;

	/**
	 * 获得登录表中所有信息
	 *
	 * @param dateandtime
	 * @return
	 */
	public List<LoginInfo> getLoginInfomation(String dateandtime) {
		List<LoginInfo> list = new ArrayList<>();
		this.conn = DataSourceConnection.getConn();
		String sql = null;
		if (dateandtime == null) {
			sql = "select * from loginrecord order by dateandtime";
		} else {
			sql = "select * from loginrecord where dateandtime like ?";
		}


		try {
			this.stat = this.conn.prepareStatement(sql);
			if (dateandtime != null) {
				this.stat.setString(1, dateandtime.substring(0, dateandtime.indexOf(" ")) + "%");
			}
			this.set = this.stat.executeQuery();
			while (this.set.next()) {
				LoginInfo loginInfo = new LoginInfo(
						this.set.getInt(1),
						this.set.getString(2),
						this.set.getString(3).substring(0, this.set.getString("dateandtime").indexOf(" ")),
						this.set.getString(3).substring(this.set.getString("dateandtime").indexOf(" "), this.set.getString("dateandtime").length() - 1)
				);
				list.add(loginInfo);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


	/**
	 * 查询goods表单
	 *
	 * @return
	 */
	public void queryGoodsTable(Page<Good> page) {
		List<Good> list = new ArrayList<>();
		int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
		this.conn = DataSourceConnection.getConn();
		String sql = "select * from goods limit ?,?";
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setInt(1, beginIndex);
			this.stat.setInt(2, page.getPageSize());
			this.set = this.stat.executeQuery();
			while (this.set.next()) {
				Good good = new Good(this.set.getInt(1),
						this.set.getString(2),
						this.set.getDouble(3),
						this.set.getDouble(4),
						this.set.getInt(5),
						this.set.getString(6),
						this.set.getString(7),
						this.set.getString(8),
						this.set.getDate(9));
				list.add(good);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		page.setList(list);
	}

	/**
	 * 查询订单表单
	 *
	 * @return
	 */
	public void queryOrderTable(Page<UserOrderGoods> page) {
		List<UserOrderGoods> list = new ArrayList<>();
		int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
		this.conn = DataSourceConnection.getConn();
		String sql = "select * from `Shop`.`order` limit ?,?";
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setInt(1, beginIndex);
			this.stat.setInt(2, page.getPageSize());
			this.set = this.stat.executeQuery();
			while (this.set.next()) {
				UserOrderGoods userOrderGoods = new UserOrderGoods(this.set.getInt(1),
						this.set.getString(2),
						this.set.getString(3),
						this.set.getInt(4),
						this.set.getString(5),
						this.set.getDouble(6),
						this.set.getInt(7),
						this.set.getDouble(8),
						this.set.getString(9),
						this.set.getString(10),
						this.set.getDate(11));

				list.add(userOrderGoods);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		page.setList(list);
	}

	/**
	 * 更新商品表单几个特别的列
	 *
	 * @param updataThing
	 * @param updataId
	 * @param updataVal
	 */
	public void updataGoodsTable(String updataThing, int updataId, String updataVal) {
		String sql = "update `Shop`.`goods` set " + updataThing + "=? where goods_id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, updataVal);
			this.stat.setInt(2, updataId);
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 查询goods表单中数据的行数
	 *
	 * @return
	 */
	public int queryGoodsTableTotalSize() {
		int num = 0;
		String sql = "select count(*) from goods";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.set = this.stat.executeQuery();
			if (this.set.next()) {
				num = this.set.getInt(1);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}


	/**
	 * 管理员更新用户数据
	 *
	 * @param user
	 */
	public void updateUserInfo(User user) {
		String sql = "update `Shop`.`user` set userName=?, userImage=?, email=?, phone=?, sex=?, passRemark=? where id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, user.getUserName());
			this.stat.setString(2, user.getUserImage());
			this.stat.setString(3, user.getEmail());
			this.stat.setString(4, user.getPhone());
			this.stat.setString(5, user.getSex());
			this.stat.setString(6, user.getPassRemark());
			this.stat.setInt(7, user.getUserId());
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 管理员删除用户
	 *
	 * @param id
	 */
	public void deleteUser(int id) {
		String sql = "delete from `Shop`.`user` where id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setInt(1, id);
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 管理员更新货物信息
	 *
	 * @param good
	 */
	public void updateGoodsInfo(Good good) {
		String sql = "update `Shop`.`goods` set goods_name=?, goods_weight=?, goods_price=?, goods_number=?, prod_id=?, goods_introduce=? where goods_id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, good.getGoodsName());
			this.stat.setDouble(2, good.getGoodsWeight());
			this.stat.setDouble(3, good.getGoodsPrice());
			this.stat.setInt(4, good.getGoodsNumber());
			this.stat.setString(5, good.getProdId());
			this.stat.setString(6, good.getGoodsIntroduce());
			this.stat.setInt(7, good.getGoodsId());
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 管理员删除商品
	 *
	 * @param id
	 */
	public void deleteGood(int id) {
		String sql = "delete from `Shop`.`goods` where goods_id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setInt(1, id);
			this.stat.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	/**
	 * 管理员添加商品
	 *
	 * @param good
	 */
	public void addGoods(Good good) {
		String sql = "insert into `Shop`.`goods` values(null, ?,?,?,?,?,?,?,?)";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, good.getGoodsName());
			this.stat.setDouble(2, good.getGoodsWeight());
			this.stat.setDouble(3, good.getGoodsPrice());
			this.stat.setInt(4, good.getGoodsNumber());
			this.stat.setString(5, good.getProdId());
			this.stat.setString(6, good.getGoodsIntroduce());
			this.stat.setString(7, good.getGoodsImage());
			this.stat.setDate(8, (Date) good.getCreateTime());
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	/**
	 * 管理员根据时间或者管此词查询
	 *
	 * @param page
	 * @param sql_date
	 * @param keyword
	 */
	public void queryGoodsTableBySearch(Page<Good> page, Date sql_date, String keyword) {
		if (sql_date == null && keyword == "") {
			List<Good> list = new ArrayList<>();
			int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
			this.conn = DataSourceConnection.getConn();
			String sql = "select * from goods limit ?,?";
			try {
				this.stat = this.conn.prepareStatement(sql);
				this.stat.setInt(1, beginIndex);
				this.stat.setInt(2, page.getPageSize());
				this.set = this.stat.executeQuery();
				while (this.set.next()) {
					Good good = new Good(this.set.getInt(1),
							this.set.getString(2),
							this.set.getDouble(3),
							this.set.getDouble(4),
							this.set.getInt(5),
							this.set.getString(6),
							this.set.getString(7),
							this.set.getString(8),
							this.set.getDate(9));
					list.add(good);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			page.setList(list);
		}

		if (sql_date != null) {
			if (keyword == "") {
				List<Good> list = new ArrayList<>();
				int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
				this.conn = DataSourceConnection.getConn();
				String sql = "select * from goods  where create_time=? limit ?,?";
				try {
					this.stat = this.conn.prepareStatement(sql);
					this.stat.setDate(1, sql_date);
					this.stat.setInt(2, beginIndex);
					this.stat.setInt(3, page.getPageSize());
					this.set = this.stat.executeQuery();
					while (this.set.next()) {
						Good good = new Good(this.set.getInt(1),
								this.set.getString(2),
								this.set.getDouble(3),
								this.set.getDouble(4),
								this.set.getInt(5),
								this.set.getString(6),
								this.set.getString(7),
								this.set.getString(8),
								this.set.getDate(9));
						list.add(good);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}

				page.setList(list);
			} else {
				List<Good> list = new ArrayList<>();
				int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
				this.conn = DataSourceConnection.getConn();
				String sql = "select * from goods  where create_time=? and goods_name LIKE '%" + keyword + "%' limit ?,?";
				try {
					this.stat = this.conn.prepareStatement(sql);
					this.stat.setDate(1, sql_date);
					this.stat.setInt(2, beginIndex);
					this.stat.setInt(3, page.getPageSize());
					this.set = this.stat.executeQuery();
					while (this.set.next()) {
						Good good = new Good(this.set.getInt(1),
								this.set.getString(2),
								this.set.getDouble(3),
								this.set.getDouble(4),
								this.set.getInt(5),
								this.set.getString(6),
								this.set.getString(7),
								this.set.getString(8),
								this.set.getDate(9));
						list.add(good);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}

				page.setList(list);
			}
		}

		if (keyword != "") {
			if (sql_date == null) {
				List<Good> list = new ArrayList<>();
				int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
				this.conn = DataSourceConnection.getConn();
				String sql = "select * from goods where goods_name LIKE '%" + keyword + "%' limit ?,? ";
				try {
					this.stat = this.conn.prepareStatement(sql);
					this.stat.setInt(1, beginIndex);
					this.stat.setInt(2, page.getPageSize());
					this.set = this.stat.executeQuery();
					while (this.set.next()) {
						Good good = new Good(this.set.getInt(1),
								this.set.getString(2),
								this.set.getDouble(3),
								this.set.getDouble(4),
								this.set.getInt(5),
								this.set.getString(6),
								this.set.getString(7),
								this.set.getString(8),
								this.set.getDate(9));
						list.add(good);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				page.setList(list);
			}
		}

		try {
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 管理员查询订单表中数据量
	 *
	 * @return
	 */
	public int queryOrderTableTotalSize() {
		int num = 0;
		String sql = "select count(*) from `Shop`.`order`";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.set = this.stat.executeQuery();
			if (this.set.next()) {
				num = this.set.getInt(1);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	/**
	 * 管理员查询用户表
	 *
	 * @return
	 */
	public int queryUserTableTotalSize() {
		int num = 0;
		String sql = "select count(*) from `Shop`.`user`";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.set = this.stat.executeQuery();
			if (this.set.next()) {
				num = this.set.getInt(1);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	/**
	 * 查询用户表
	 *
	 * @param page
	 */
	public void queryUserTable(Page<User> page) {
		List<User> list = new ArrayList<>();
		int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
		this.conn = DataSourceConnection.getConn();
		String sql = "select * from user limit ?,?";
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setInt(1, beginIndex);
			this.stat.setInt(2, page.getPageSize());
			this.set = this.stat.executeQuery();
			while (this.set.next()) {
				User user = new User(
						this.set.getInt(1),
						this.set.getString(2),
						this.set.getString(3),
						this.set.getString(4),
						this.set.getString(5),
						this.set.getString(6),
						this.set.getString(7),
						this.set.getString(8),
						this.set.getDate(9)
				);
				list.add(user);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		page.setList(list);
	}

	/**
	 * 查询管理员表单
	 *
	 * @return
	 */
	public int queryAdminTableTotalSize() {
		int num = 0;
		String sql = "select count(*) from `Shop`.`admin`";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.set = this.stat.executeQuery();
			if (this.set.next()) {
				num = this.set.getInt(1);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	/**
	 * 获取管理员表
	 *
	 * @param page
	 */
	public void queryAdminTable(Page<Admin> page) {
		List<Admin> list = new ArrayList<>();
		int beginIndex = (page.getCurrentPage() - 1) * page.getPageSize();
		this.conn = DataSourceConnection.getConn();
		String sql = "select * from admin limit ?,?";
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setInt(1, beginIndex);
			this.stat.setInt(2, page.getPageSize());
			this.set = this.stat.executeQuery();
			while (this.set.next()) {
				Admin admin = new Admin(
						this.set.getInt(1),
						this.set.getString(2),
						this.set.getString(3)
				);
				list.add(admin);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		page.setList(list);
	}

	/**
	 * 管理员用户更新管理员账户
	 *
	 * @param admin
	 */
	public void updateAdminInfo(Admin admin) {
		String sql = "update `Shop`.`admin` set admin_name=?, admin_passwd=? where id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, admin.getAdminName());
			this.stat.setString(2, admin.getAdminPasswd());
			this.stat.setInt(3, admin.getId());
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 管理员删除管理员账户
	 *
	 * @param id
	 */
	public void deleteAdmin(int id) {
		String sql = "delete from `Shop`.`admin` where id=" + id;
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 管理员添加管理员用户
	 *
	 * @param admin
	 */
	public void addAdmin(Admin admin) {
		String sql = "insert into `Shop`.`admin` values(null,?,?)";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, admin.getAdminName());
			this.stat.setString(2, admin.getAdminPasswd());
			this.stat.executeUpdate();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 管理员登录
	 *
	 * @param userName
	 * @param userPass
	 * @return
	 */
	public Admin loginAdmin(String userName, String userPass) {
		Admin admin = null;
		String sql = "select * from admin where admin_name=? and admin_passwd=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, userName);
			this.stat.setString(2, userPass);
			this.set = this.stat.executeQuery();
			if (this.set.next()) {
				admin = new Admin(
						this.set.getInt(1),
						this.set.getString(2),
						this.set.getString(3)
				);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admin;
	}

	/**
	 * 管理员删除订单信息
	 *
	 * @param id
	 */
	public void deleteOrder(int id) {
		String sql = "delete from `Shop`.`order` where id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setInt(1, id);
			this.stat.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
