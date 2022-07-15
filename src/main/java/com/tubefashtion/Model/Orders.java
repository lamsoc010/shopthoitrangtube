package com.tubefashtion.Model;

public class Orders {
	int id, idInfoOrder, idProduct, status, quantity;
	float price;
	String name, image, size, color;
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Orders(int idInfoOrder, int idProduct, int status, int quantity, float price, String size, String color) {
		super();
		this.idInfoOrder = idInfoOrder;
		this.idProduct = idProduct;
		this.status = status;
		this.quantity = quantity;
		this.price = price;
		this.size = size;
		this.color = color;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdInfoOrder() {
		return idInfoOrder;
	}
	public void setIdInfoOrder(int idInfoOrder) {
		this.idInfoOrder = idInfoOrder;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
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
	
}
