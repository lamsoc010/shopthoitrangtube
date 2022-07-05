package com.tubefashtion.Model;

public class ImageProduct {
	int id, idProduct, status;
	String image, created_at, updated_at;
	
	public ImageProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ImageProduct(int id, int idProduct, int status, String image, String created_at, String updated_at) {
		super();
		this.id = id;
		this.idProduct = idProduct;
		this.status = status;
		this.image = image;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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
