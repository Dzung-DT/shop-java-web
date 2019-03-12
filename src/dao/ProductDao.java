package dao;

import java.util.List;

import model.Product;

public interface ProductDao {
	void create(Product p);

	void update(Product p);
	
	void delete(int id);
	
	Product get(int id);
	
	Product getByName(String name);
	
	List<Product> search(String name);
	
	List<Product> seachByCategory(int cate_id);
}

