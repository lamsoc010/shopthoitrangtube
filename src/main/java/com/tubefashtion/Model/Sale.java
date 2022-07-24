package com.tubefashtion.Model;

import java.util.Date;

public class Sale {
	int id, idProduct, status;
	float sale;
	String time_sale, created_at, updated_at;
	public Sale() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sale(int idProduct, int status, float sale, String time_sale, String created_at, String updated_at) {
		super();
		this.idProduct = idProduct;
		this.status = status;
		this.sale = sale;
		this.time_sale = time_sale;
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
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public float getSale() {
		return sale;
	}
	public void setSale(float sale) {
		this.sale = sale;
	}
	public String getTime_sale() {
		return time_sale;
	}
	public void setTime_sale(String time_sale) {
		this.time_sale = time_sale;
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
