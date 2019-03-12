package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.ProductDao;
import model.Category;
import model.Person;
import model.Product;
import service.CategoryService;
import service.impl.CategoryServiceImpl;

public class ProductDaoImpl extends JDBCConnection implements ProductDao{
	CategoryService categoryService = new CategoryServiceImpl();

	@Override
	public void create(Product p) {
		
		Connection conn = super.getConnect();
		try {
			String sql = "INSERT INTO product(name, quantity, price, description, product_file_name, cate_id) " + "VALUES (?, ?, ?, ?, ?, ?)";

			PreparedStatement statement = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, p.getName());
			statement.setInt(2, p.getQuantity());
			statement.setFloat(3, p.getPrice());
			statement.setString(4, p.getDescription());
			statement.setString(5, p.getProductFileName());
			statement.setInt(6, p.getCategory().getId());
			statement.executeUpdate();

			ResultSet generatedKeys = statement.getGeneratedKeys();
			if (generatedKeys.next()) {
				int id = generatedKeys.getInt(1);
				p.setId(id);// set vao doi tuong de su dung trong ham main sau nay
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

	}
	
	@Override
	public void update(Product p) {
		Connection conn = super.getConnect();
		try {
			String sql = "UPDATE product SET name = ?, quantity = ?, price = ?, description = ?, product_file_name = ?, cate_id = ? WHERE id = ? ";

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, p.getName());
			statement.setInt(2, p.getQuantity());
			statement.setFloat(3, p.getPrice());
			statement.setString(4, p.getDescription());
			statement.setString(5, p.getProductFileName());
			statement.setInt(6, p.getCategory().getId());
			statement.setInt(7, p.getId());

			statement.executeUpdate();
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
	public void delete(int id) {
		Connection conn = super.getConnect();
		try {
			String sql = "DELETE FROM product WHERE id = ? ";

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);

			statement.executeUpdate();
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
	public Product get(int id) {
		// JDBC API
		Connection conn = super.getConnect();
		try {
			String sql = "SELECT * FROM product WHERE id =?";

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				Category category = categoryService.get(rs.getInt("cate_id"));
				Product p = new Product();
				p.setId(id);
				p.setName(rs.getString("name"));
				p.setQuantity(rs.getInt("quantity"));
				p.setPrice(rs.getFloat("price"));
				p.setDescription(rs.getString("description"));		
				p.setProductFileName(rs.getString("product_file_name"));
				p.setCategory(category);
				return p;
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
	public List<Product> search(String name) {
		List<Product> products = new ArrayList<Product>();

		Connection conn = super.getConnect();
		try {
			String sql = "SELECT * FROM product WHERE name LIKE ?";

			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, "%" + name + "%");

			ResultSet rs = statement.executeQuery();

			while (rs.next()) {
				Category category = categoryService.get(rs.getInt("cate_id"));
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setQuantity(rs.getInt("quantity"));
				p.setPrice(rs.getFloat("price"));
				p.setDescription(rs.getString("description"));				
				p.setProductFileName(rs.getString("product_file_name"));
				p.setCategory(category);
				products.add(p);
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

		return products;
	}
	@Override
	public Product getByName(String name) {
		// JDBC API
				Connection conn = super.getConnect();
				try {
					String sql = "SELECT * FROM product WHERE name =?";

					PreparedStatement statement = conn.prepareStatement(sql);
					statement.setString(1, name);

					ResultSet rs = statement.executeQuery();

					while (rs.next()) {
						Product p = new Product();
						p.setId(rs.getInt("id"));
						p.setName(rs.getString("name"));
						p.setQuantity(rs.getInt("quantity"));
						p.setPrice(rs.getFloat("price"));
						p.setDescription(rs.getString("description"));			
						p.setProductFileName(rs.getString("product_file_name"));
						return p;
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
	public List<Product> seachByCategory(int cate_id) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT product.id, product.name AS p_name, product.price, product.quantity, product.description ,product.product_file_name,  category.cate_name AS c_name, category.cate_id AS c_id "
				+ "FROM product , category   where product.cate_id = category.cate_id and Category.cate_id=?";
		Connection conn = super.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, cate_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categoryService.get(rs.getInt("c_id"));
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("p_name"));
				product.setQuantity(rs.getInt("quantity"));
				product.setPrice(rs.getFloat("price"));				
				product.setDescription(rs.getString("description"));
				product.setProductFileName(rs.getString("product_file_name"));
				product.setCategory(category);
				productList.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}
}
