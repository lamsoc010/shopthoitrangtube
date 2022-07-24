package com.tubefashtion.Model;

public class Size {
	int id, idProduct, idSize, quantity, status;
	String size;
	
	public Size() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Size(int idProduct, int idSize, int quantity, int status, String size) {
		super();
		this.idProduct = idProduct;
		this.idSize = idSize;
		this.quantity = quantity;
		this.status = status;
		this.size = size;
	}

	
	public Size(int idProduct, int idSize, int quantity, int status) {
		super();
		this.idProduct = idProduct;
		this.idSize = idSize;
		this.quantity = quantity;
		this.status = status;
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

	public int getIdSize() {
		return idSize;
	}

	public void setIdSize(int idSize) {
		this.idSize = idSize;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	
	
}
