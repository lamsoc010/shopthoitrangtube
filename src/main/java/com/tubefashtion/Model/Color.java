package com.tubefashtion.Model;

public class Color {
	int id, idDetailSize, idColor, quantity, status;
	String size, color;
	public Color() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Color(int idDetailSize, int idColor, int quantity, int status, String size, String color) {
		super();
		this.idDetailSize = idDetailSize;
		this.idColor = idColor;
		this.quantity = quantity;
		this.status = status;
		this.size = size;
		this.color = color;
	}

	public int getIdDetailSize() {
		return idDetailSize;
	}

	public void setIdDetailSize(int idDetailSize) {
		this.idDetailSize = idDetailSize;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
