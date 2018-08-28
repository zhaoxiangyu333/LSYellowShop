package login.dao;

import user.vo.User;
import utility.DataSourceConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LoginDao {
	Connection conn = null;
	PreparedStatement stat = null;
	ResultSet set = null;

	/**
	 * 用户登录
	 *
	 * @param userName
	 * @param userPass
	 * @return
	 */
	public User loginUser(String userName, String userPass) {
		this.conn = DataSourceConnection.getConn();
		String sql = "SELECT * FROM user WHERE userName=? AND userPass=?";
		User user = null;
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1, userName);
			this.stat.setString(2, userPass);
			this.set = this.stat.executeQuery();
			if (this.set.next()) {
				user = new User(this.set.getInt(1),
						this.set.getString(2),
						this.set.getString(3),
						this.set.getString(4),
						this.set.getString(5),
						this.set.getString(6),
						this.set.getString(7),
						this.set.getString(8),
						this.set.getDate(9)
				);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (user != null) {
			//数据库中用户表写入登录日期
			String sql2 = "update `Shop`.`user` set login_time=? where userName=?";
			try {
				this.stat = this.conn.prepareStatement(sql2);
				Date date = new Date();
				java.sql.Date sqlDate = new java.sql.Date(date.getTime());
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-hh");
				format.format(sqlDate);
				this.stat.setDate(1, sqlDate);
				this.stat.setString(2, user.getUserName());
				this.stat.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}

			String sql3 = "insert into `Shop`.`loginrecord` values(null, ?,?)";
			try {
				this.stat = this.conn.prepareStatement(sql3);
				this.stat.setString(1, user.getUserName());
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				String ss = format.format(date);
				this.stat.setString(2, ss);
				this.stat.executeUpdate();
//关闭当前数据库链接
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}


		return user;
	}
}
