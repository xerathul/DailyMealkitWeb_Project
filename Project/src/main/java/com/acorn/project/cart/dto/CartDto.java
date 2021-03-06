package com.acorn.project.cart.dto;

public class CartDto {
	private int cart_id;
	private String id;
	private String productId;
	private int price;
	private int amount;
	private int newAmount;
	private String imagePath;
	private int totalPrice;
	private String productName;
	
	public CartDto() {}

	public CartDto(int cart_id, String id, String productId, int price, int amount, int newAmount, String imagePath,
			int totalPrice, String productName) {
		super();
		this.cart_id = cart_id;
		this.id = id;
		this.productId = productId;
		this.price = price;
		this.amount = amount;
		this.newAmount = newAmount;
		this.imagePath = imagePath;
		this.totalPrice = totalPrice;
		this.productName = productName;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getNewAmount() {
		return newAmount;
	}

	public void setNewAmount(int newAmount) {
		this.newAmount = newAmount;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}



	
}


