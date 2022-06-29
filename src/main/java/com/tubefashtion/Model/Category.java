package com.tubefashtion.Model;

import java.util.Date;

public class Category {
	int id, status;
	String name;
	Date created_at, updated_at;
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(int id, int status, String name, Date created_at, Date updated_at) {
		super();
		this.id = id;
		this.status = status;
		this.name = name;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
