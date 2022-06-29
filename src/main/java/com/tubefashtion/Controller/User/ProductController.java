package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.tubefashtion.DAO.ProductDao;
import com.tubefashtion.DAO.SaleDao;
import com.tubefashtion.Model.Pagination;
import com.tubefashtion.Model.Product;
import com.tubefashtion.Model.Sale;

@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String value = request.getParameter("value");
		String category = request.getParameter("category");
		int size = 4;
//		Số trang hiện tại
		int pageCurrent;
		if(request.getParameter("pageCurrent") == null) {
			pageCurrent = 1;
		} else {
			pageCurrent = Integer.parseInt(request.getParameter("pageCurrent"));
		}
//		Tổng số trang
		int totalPage = (int) Math.ceil((double)ProductDao.getAllProduct().size() / (double)size);
		
//		List sản phẩm trên 1 trang
//		listProduct = paginationProduct(listProduct, pageCurrent, size);
		List<Product> listProduct = new ArrayList<Product>();
		listProduct = sortProduct(listProduct, value, pageCurrent, size, category);
//		Trả về danh sách pagination
		List<Pagination> pagination = new ArrayList<Pagination>();
		pagination.add(new Pagination(size, pageCurrent, totalPage));
		
		List<Sale> listSale = SaleDao.getAllSale();
		
//		Chuyen doi arraylist sang json
		String listSaleJson = new Gson().toJson(listSale);
		String listProductJson = new Gson().toJson(listProduct);
		String paginationJson = new Gson().toJson(pagination);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("listProduct", listProductJson);
		json.addProperty("listSale", listSaleJson);
		json.addProperty("pagination", paginationJson);
		out.write(json.toString());
	}
	
	protected static List<Product> sortProduct(List<Product> listProduct, String value, int pageCurrent, int size, String category ) {
		int offset = (pageCurrent - 1) * size;
		if(value.equals("timeUp")) {
//			String sql = 
//					"select products.*, sale.sale, sale.time_sale \r\n"
//					+ "from products left join sale on products.idSale = sale.id \r\n"
//					+ "where idSubCategory in (\r\n"
//					+ "    SELECT sub_category.id from sub_category \r\n"
//					+ "    INNER JOIN category on sub_category.idCategory = category.id\r\n"
//					+ "	WHERE category.name = \"Nam\")\r\n"
//					+ "order by products.updated_at asc limit 0, 3 ";
//			listProduct = ProductDao.getListProductSort(sql);
			listProduct = ProductDao.getListProductSort1("products.updated_at", "asc", offset, size, category);
		} else if(value.equals("timeDown")) {
			String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.idSale = sale.id order by products.updated_at desc limit " + offset +"," + size;
			listProduct = ProductDao.getListProductSort(sql);
		} else if(value.equals("nameUp")) {
			String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.idSale = sale.id order by products.name asc limit " + offset +"," + size;
			listProduct = ProductDao.getListProductSort(sql);
		} else if(value.equals("nameDown")) {
			String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.idSale = sale.id order by products.name desc limit " + offset +"," + size;
			listProduct = ProductDao.getListProductSort(sql);
		} else if(value.equals("priceUp")) {
			String sql = "select products.*, sale.sale, sale.time_sale, (price - if(sale.sale != \"null\", price*sale.sale/100, 0)) as priceSort "
					+ "from products left join sale on products.idSale = sale.id order by priceSort asc limit " + offset +"," + size;
			listProduct = ProductDao.getListProductSort(sql);
		} else if(value.equals("priceDown")) {
			String sql = "select products.*, sale.sale, sale.time_sale, (price - if(sale.sale != \"null\", price*sale.sale/100, 0)) as priceSort "
					+ "from products left join sale on products.idSale = sale.id order by priceSort desc limit " + offset +"," + size;
			listProduct = ProductDao.getListProductSort(sql);
		}
		return listProduct;
	}
	
	protected static List<Product> paginationProduct(List<Product> listProduct,int pageCurrent, int size) {
		int offset = (pageCurrent - 1) * size;
		listProduct = ProductDao.getProductPanigation(offset, size);
		return listProduct;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
