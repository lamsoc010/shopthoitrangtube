package com.tubefashtion.Model;

public class Pagination {
	int size, pageCurrent;
	double totalPage;
	public Pagination() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Pagination(int size, int pageCurrent, double totalPage) {
		super();
		this.size = size;
		this.pageCurrent = pageCurrent;
		this.totalPage = totalPage;
	}



	public int getSize() {
		return size;
	}


	public void setSize(int size) {
		this.size = size;
	}


	public int getPageCurrent() {
		return pageCurrent;
	}

	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}



	public double getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(double totalPage) {
		this.totalPage = totalPage;
	}

	
}
