package com.tubefashtion.Model;

import java.util.Date;

public class WishList {
	int id, idProduct, idUser;
	float rating, price, sale;
	String  image, name, time_sale, created_at, updated_at;
	public WishList() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public WishList(int id, int idProduct, float rating, float price, float sale, String image, String name,
			String time_sale, String created_at, String updated_at) {
		super();
		this.id = id;
		this.idProduct = idProduct;
		this.rating = rating;
		this.price = price;
		this.sale = sale;
		this.image = image;
		this.name = name;
		this.time_sale = time_sale;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public float getSale() {
		return sale;
	}

	public void setSale(float sale) {
		this.sale = sale;
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
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
