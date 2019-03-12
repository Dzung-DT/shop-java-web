package model;

import java.io.Serializable;

public class CartItem implements Serializable{
	private int id;
	private Product product;
	private int buyQuantity;
	private float sellPrice;
	private Cart cart;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getBuyQuantity() {
		return buyQuantity;
	}
	public void setBuyQuantity(int buyQuantity) {
		this.buyQuantity = buyQuantity;
	}
	public float getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(float sellPrice) {
		this.sellPrice = sellPrice;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	
}
