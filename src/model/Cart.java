package model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Cart implements Serializable{
	private int id;
	private Person buyer;
	private Date buyDate;
	private List<CartItem> cartItems;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Person getBuyer() {
		return buyer;
	}
	public void setBuyer(Person buyer) {
		this.buyer = buyer;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	
}
