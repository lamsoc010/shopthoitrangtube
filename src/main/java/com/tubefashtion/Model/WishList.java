package com.tubefashtion.Model;

import java.util.Date;

public class WishList {
	int id, idProduct;
	String created_at, updated_at;
	public WishList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WishList(int id, int idProduct, String created_at, String updated_at) {
		super();
		this.id = id;
		this.idProduct = idProduct;
		this.created_at = created_at;
		this.updated_at = updated_at;
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
	
	
}
