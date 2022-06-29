package com.tubefashtion.Model;

import java.util.Date;

public class Sale {
	int id, idProduct, status;
	float sale;
	Date time_sale, created_at, updated_at;
	public Sale() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sale(int id, int idProduct, int status, float sale, Date time_sale, Date created_at, Date updated_at) {
		super();
		this.id = id;
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
	public Date getTime_sale() {
		return time_sale;
	}
	public void setTime_sale(Date time_sale) {
		this.time_sale = time_sale;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	
}
