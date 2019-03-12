package service;

import java.util.List;

import model.CartItem;

public interface CartItemService {
	void insert(CartItem cartItem);

	void edit(CartItem cartItem);

	void delete(String id);

	CartItem get(int id);

	List<CartItem> getAll();

}
