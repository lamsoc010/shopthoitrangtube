package com.tubefashtion.Model;

public class Cart {
	int id, idProduct, idUser, quantity;
	String size, color, created_at, updated_at;
	float price, total;
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cart(int id, int idProduct, int idUser, int quantity, String size, String color, String created_at,
			String updated_at, float price, float total) {
		super();
		this.id = id;
		this.idProduct = idProduct;
		this.idUser = idUser;
		this.quantity = quantity;
		this.size = size;
		this.color = color;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.price = price;
		this.total = total;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	
	
}
