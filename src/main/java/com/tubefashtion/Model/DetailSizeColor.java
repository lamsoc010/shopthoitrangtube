package com.tubefashtion.Model;

public class DetailSizeColor {
	int id, idDetailSize, idColor, quantity, status;

	public DetailSizeColor() {
		super();
		// TODO Auto-generated constructor stub
	}


	public DetailSizeColor(int idDetailSize, int idColor, int quantity, int status) {
		super();
		this.idDetailSize = idDetailSize;
		this.idColor = idColor;
		this.quantity = quantity;
		this.status = status;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	
	public int getIdDetailSize() {
		return idDetailSize;
	}


	public void setIdDetailSize(int idDetailSize) {
		this.idDetailSize = idDetailSize;
	}


	public int getIdColor() {
		return idColor;
	}

	public void setIdColor(int idColor) {
		this.idColor = idColor;
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
	
	
}
