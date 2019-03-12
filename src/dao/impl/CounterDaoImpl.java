package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dao.CounterDao;
import model.Counter;
import model.Person;

public class CounterDaoImpl extends JDBCConnection implements CounterDao{
	@Override
	public void create(Counter c) {
		// JDBC API
		Connection conn = super.getConnect();
		try {
			String sql = "INSERT INTO counter(quantity) "
					+ "VALUES (?)";

			PreparedStatement statement = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setInt(1,c.getNumber());

			statement.executeUpdate();

			ResultSet generatedKeys = statement.getGeneratedKeys();
			if (generatedKeys.next()) {
				int id = generatedKeys.getInt(1);
				c.setId(id);// set vao doi tuong de su dung trong ham main sau nay
			}
		} catch (Exception e) {
			System.out.println("Loi CSDL: " + e);
		} finally {
			// dong ket noi toi database
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
	@Override
	public Counter get(int id) {
		
		Connection conn = super.getConnect();
		try {
			String sql = "SELECT * FROM counter WHERE id =?";

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				Counter c = new Counter();
				c.setId(id);
				c.setNumber(rs.getInt("number"));
				return c;
			}
		} catch (Exception e) {
			System.out.println("Loi CSDL: " + e);
		} finally {
			
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return null;
	}
	@Override
	public void update(Counter c) {
		Connection conn = super.getConnect();
		try {
			String sql = "UPDATE counter SET quantity = ? WHERE (id = ?) ";

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, c.getNumber());
			statement.setInt(2, c.getId());

			statement.executeUpdate();
		} catch (Exception e) {
			System.out.println("Loi CSDL: " + e);
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
