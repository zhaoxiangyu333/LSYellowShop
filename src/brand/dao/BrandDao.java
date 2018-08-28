package brand.dao;

import brand.vo.Brand;
import utility.DataSourceConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BrandDao {
	Connection conn = null;
	PreparedStatement stat = null;
	ResultSet set = null;

	/**
	 * 查询所有电商品牌
	 *
	 * @return
	 */
	public List<Brand> queryBrandLists() {
		List<Brand> list = new ArrayList<>();

		this.conn = DataSourceConnection.getConn();
		String sql = "SELECT * FROM brand";
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.set = this.stat.executeQuery();
			while (this.set.next()) {
				Brand brand = new Brand(this.set.getString(2), this.set.getString(3));
				list.add(brand);
			}
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
