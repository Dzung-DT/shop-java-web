package service;

import java.util.List;

import model.Cart;

public interface CartService {
	void insert(Cart cart);

	void edit(Cart newCart);

	void delete(int id);

	Cart get(int id);
	
	List<Cart> getAll();

}
