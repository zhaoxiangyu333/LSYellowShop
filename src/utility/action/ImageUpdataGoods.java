package utility.action;

import utility.DataSourceConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageUpdataGoods {
	private Connection conn = null;
	private PreparedStatement stat = null;

	public void updataImageUrl(int id, String pathUrl){
		String sql  ="update `Shop`.`goods` set goods_image=? where goods_id=?";
		this.conn = DataSourceConnection.getConn();
		try {
			this.stat = this.conn.prepareStatement(sql);
			this.stat.setString(1,pathUrl);
			this.stat.setInt(2,id);
			this.stat.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
