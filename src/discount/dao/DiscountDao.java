package discount.dao;

import good.vo.Good;
import utility.DataSourceConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DiscountDao {
	Connection conn = null;
	PreparedStatement stat = null;
	ResultSet set = null;

	/**
	 * 查询所有折扣商品
	 * @return
	 */
	public List<Good> queryDiscountLists() {
		List<Good> list = new ArrayList<>();

		this.conn = DataSourceConnection.getConn();
		String sql = "SELECT * FROM goods";
		try {
			this.stat = this.conn.prepareStatement(sql);
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
						this.set.getDate(9)
				);
				list.add(good);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
