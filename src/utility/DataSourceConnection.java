package utility;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataSourceConnection {
	public static Connection getConn() {
		Connection connection = null;
		Context context = null;
		try {
			context = new InitialContext();
			context = (Context) context.lookup("java:/comp/env");
			DataSource source = (DataSource) context.lookup("java/webdb1");
			try {
				connection = source.getConnection();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return connection;
	}
}
