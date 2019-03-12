	package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.CartItemDao;
import dao.PersonDao;
import model.Cart;
import model.CartItem;
import model.Person;
import model.Product;
import service.CartService;
import service.ProductService;
import service.impl.CartServiceImpl;
import service.impl.ProductServiceImpl;

public class CartItemDaoImpl extends JDBCConnection implements CartItemDao {
	CartService cartService = new CartServiceImpl();
	ProductService productService = new ProductServiceImpl();
	PersonDao personDao = new PersonDaoImpl();
	
	
	@Override
	public void insert(CartItem cartItem) {
		String sql = "INSERT INTO cartitem(cat_id, product_id, buy_quantity, sell_price) VALUES (?,?,?,?)";
		Connection con = super.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			ps.setInt(1, cartItem.getCart().getId());
			ps.setInt(2, cartItem.getProduct().getId());
			ps.setInt(3, cartItem.getBuyQuantity());
			ps.setFloat(4, cartItem.getSellPrice());
			ps.executeUpdate();
			ResultSet generatedKeys = ps.getGeneratedKeys();
			if (generatedKeys.next()) {
				int id = generatedKeys.getInt(1);
				cartItem.setId(id);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(CartItem cartItem) {
		String sql = "UPDATE cartitem SET cat_id = ?, product_id = ?, buy_quantity = ?, sell_price=? WHERE id = ?";
		Connection con = super.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, cartItem.getCart().getId());
			ps.setInt(2, cartItem.getProduct().getId());
			ps.setInt(3, cartItem.getBuyQuantity());
			ps.setFloat(4, cartItem.getSellPrice());
			
			ps.executeUpdate();

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(String id) {
		String sql = "DELETE FROM cartitem WHERE id = ?";
		Connection con = super.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public CartItem get(int id) {
		String sql = "SELECT " + 
				"cartitem.id, " + 
				"cartitem.buy_quantity, " + 
				"cartitem.sell_price, " + 
				"cart.person_id, " + 
				"cart.buy_date, " + 
				"product.name, " + 
				"product.price " + 
				"FROM cartitem " + 
				"INNER JOIN cart " + 
				"ON cartitem.cat_id = cart.cart_id " + 
				"INNER JOIN product " + 
				"ON cartitem.product_id = product.id " +
				"WHERE cartitem.id = ?";
		Connection con = super.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Person person = personDao.get(rs.getInt("id"));
				
				Cart cart = new Cart();
				cart.setBuyer(person);
				cart.setBuyDate(rs.getDate("buy_date"));
				
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getFloat("price"));
				
				CartItem cartItem = new CartItem();
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setBuyQuantity(rs.getInt("buy_quantity"));
				cartItem.setSellPrice(rs.getFloat("sell_price"));
				
				
				return cartItem;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<CartItem> getAll() {
		List<CartItem> cartItemList = new ArrayList<CartItem>();
		String sql = "SELECT " + 
				"cartitem.id, " + 
				"cartitem.buy_quantity, " + 
				"cartitem.sell_price, " + 
				"cart.person_id, " + 
				"cart.buy_date, " + 
				"product.name, " + 
				"product.price " + 
				"FROM cartitem " + 
				"INNER JOIN cart " + 
				"ON cartitem.cat_id = cart.cart_id " + 
				"INNER JOIN product " + 
				"ON cartitem.product_id = product.id ";
		Connection con = super.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Person person = personDao.get(rs.getInt("person_id"));
				
				Cart cart = new Cart();
				cart.setBuyer(person);
				cart.setBuyDate(rs.getDate("buy_date"));
				
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getLong("price"));
				
				CartItem cartItem = new CartItem();
				cartItem.setId(rs.getInt("id"));
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setBuyQuantity(rs.getInt("buy_quantity"));
				cartItem.setSellPrice(rs.getFloat("sell_price"));

				cartItemList.add(cartItem);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartItemList;
	}

	public List<CartItem> search(String name) {
		return null;
	}
}
