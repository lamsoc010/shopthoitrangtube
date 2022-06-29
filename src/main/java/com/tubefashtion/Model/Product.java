package com.tubefashtion.Model;

import java.util.Date;

public class Product {
	int id, idSale, idSubCategory, quantity, status;
	String idProduct, name, image, descreption;
	float rating, price;
	Date created_at, updated_at, time_sale;
	float sale;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Product(int id, int idSale, int idSubCategory, int quantity, int status, String idProduct, String name,
			String image, String descreption, float rating, float price, Date created_at, Date updated_at,
			Date time_sale, float sale) {
		super();
		this.id = id;
		this.idSale = idSale;
		this.idSubCategory = idSubCategory;
		this.quantity = quantity;
		this.status = status;
		this.idProduct = idProduct;
		this.name = name;
		this.image = image;
		this.descreption = descreption;
		this.rating = rating;
		this.price = price;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.time_sale = time_sale;
		this.sale = sale;
	}


	public Product(int id, int idSale, int idSubCategory, int quantity, int status, String idProduct, String name,
			String image, String descreption, float rating, float price, Date created_at, Date updated_at) {
		super();
		this.id = id;
		this.idSale = idSale;
		this.idSubCategory = idSubCategory;
		this.quantity = quantity;
		this.status = status;
		this.idProduct = idProduct;
		this.name = name;
		this.image = image;
		this.descreption = descreption;
		this.rating = rating;
		this.price = price;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}



	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getIdSale() {
		return idSale;
	}


	public void setIdSale(int idSale) {
		this.idSale = idSale;
	}


	public int getIdSubCategory() {
		return idSubCategory;
	}


	public void setIdSubCategory(int idSubCategory) {
		this.idSubCategory = idSubCategory;
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


	public String getIdProduct() {
		return idProduct;
	}


	public void setIdProduct(String idProduct) {
		this.idProduct = idProduct;
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


	public String getDescreption() {
		return descreption;
	}


	public void setDescreption(String descreption) {
		this.descreption = descreption;
	}


	public float getRating() {
		return rating;
	}


	public void setRating(float rating) {
		this.rating = rating;
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


	public Date getTime_sale() {
		return time_sale;
	}


	public void setTime_sale(Date time_sale) {
		this.time_sale = time_sale;
	}


	public float getSale() {
		return sale;
	}


	public void setSale(float sale) {
		this.sale = sale;
	}
	
	
}
