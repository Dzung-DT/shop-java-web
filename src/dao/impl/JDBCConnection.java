package dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	
	public Connection getConnect() {
		String username = "root";
		String password = "trongdungk53";
		String url = "jdbc:mysql://localhost:3306/admin";
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			return con;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public static void main(String[] args) {
		///TEst connection 
		JDBCConnection connection = new JDBCConnection();
		Connection conn = connection.getConnect();
		
		if (conn != null) {
			System.out.println("THANH CONG");
		} else {
			System.out.println("THAT BAI");
		}
	}
}
