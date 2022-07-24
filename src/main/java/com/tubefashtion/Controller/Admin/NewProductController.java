package com.tubefashtion.Controller.Admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.tubefashtion.DAO.CategoryDao;
import com.tubefashtion.DAO.ColorDao;
import com.tubefashtion.DAO.DetailSizeColorDao;
import com.tubefashtion.DAO.ImageProductDao;
import com.tubefashtion.DAO.ProductDao;
import com.tubefashtion.DAO.SaleDao;
import com.tubefashtion.DAO.SizeDao;
import com.tubefashtion.Model.Category;
import com.tubefashtion.Model.Color;
import com.tubefashtion.Model.DetailSizeColor;
import com.tubefashtion.Model.ImageProduct;
import com.tubefashtion.Model.Product;
import com.tubefashtion.Model.Sale;
import com.tubefashtion.Model.Size;
import com.tubefashtion.Model.SubCategory;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
maxFileSize = 1024 * 1024 * 10, // 10 MB
maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
@WebServlet("/NewProductController")
public class NewProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NewProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		JsonObject json = new JsonObject();
		PrintWriter out = response.getWriter();
		
		String action = request.getParameter("action");
		switch (action) {
		case "addProduct": {
			String idProduct = request.getParameter("idProduct");
			String name = request.getParameter("name");
			float price = Float.parseFloat(request.getParameter("price"));
			int sub_category = Integer.parseInt(request.getParameter("sub_category"));
			String content = request.getParameter("content");
			System.out.println(idProduct);
			Product p = new Product(sub_category, 0, 1, idProduct, name, "", content, price, null, null);
			break;
		}
		case "show": {
			List<Category> listCategory = CategoryDao.getAllCategory();
			List<Color> listColor = ColorDao.getAllColor();
			List<Size> listSize = SizeDao.getAllSize();
	 		int idCategory;
			if(request.getParameter("idCategory") != null) {
				idCategory = Integer.parseInt(request.getParameter("idCategory"));
				List<SubCategory> listSubCategory = CategoryDao.getAllSubCategoryByIdCategory(idCategory);
				String listSubCategoryJson = new Gson().toJson(listSubCategory);
				json.addProperty("listSubCategory", listSubCategoryJson);
			}
//			Chuyen doi arraylist sang json
			String listCategoryJson = new Gson().toJson(listCategory);
			String listColorJson = new Gson().toJson(listColor);
			String listSizeJson = new Gson().toJson(listSize);
//			Them json vao json object
			json.addProperty("listCategory", listCategoryJson);
			json.addProperty("listColor", listColorJson);
			json.addProperty("listSize", listSizeJson);
			break;
		} 
		case "edit": {
			int id = Integer.parseInt(request.getParameter("id"));
			Product p = ProductDao.getProductById(id);
			
			List<Category> listCategory = CategoryDao.getAllCategory();
			List<Color> listColor = ColorDao.getAllColor();
			List<Size> listSize = SizeDao.getAllSize();
	 		int idCategory;
	 		idCategory = CategoryDao.getIdCategoryByIdSubCategory(p.getIdSubCategory());
			if(request.getParameter("idCategory") != null) {
				idCategory = Integer.parseInt(request.getParameter("idCategory"));
				List<SubCategory> listSubCategory = CategoryDao.getAllSubCategoryByIdCategory(idCategory);
				String listSubCategoryJson = new Gson().toJson(listSubCategory);
				json.addProperty("listSubCategory", listSubCategoryJson);
			}
//			Chuyen doi arraylist sang json
			String productJson = new Gson().toJson(p);
			String idCategoryJson = new Gson().toJson(idCategory);
			String listCategoryJson = new Gson().toJson(listCategory);
			String listColorJson = new Gson().toJson(listColor);
			String listSizeJson = new Gson().toJson(listSize);
//			Them json vao json object
			json.addProperty("product", productJson);
			json.addProperty("idCategory", idCategoryJson);
			json.addProperty("listCategory", listCategoryJson);
			json.addProperty("listColor", listColorJson);
			json.addProperty("listSize", listSizeJson);
			break;
		}
		}
		
		out.write(json.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		JsonObject json = new JsonObject();
		PrintWriter out = response.getWriter();
		
		String action = request.getParameter("action");
		
		
		switch (action) {
		case "addProduct": {
			json = doPost_addProduct(request, response);
			out.print(json.toString());
			break;
		}
		case "updateProduct" : {
			json = doPost_updateProduct(request, response);
			out.print(json.toString());
			break;
		}
		case "editProduct" : {
			json = doPost_editProduct(request, response);
			out.print(json.toString());
			break;
		}
		}
	}
	
	protected JsonObject doPost_editProduct(HttpServletRequest request, HttpServletResponse response) {
		JsonObject json = new JsonObject();
		int id = Integer.parseInt(request.getParameter("id"));
		String idProduct = request.getParameter("idProduct");
		System.out.println(id);
		String name = request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price"));
		int sub_category = Integer.parseInt(request.getParameter("sub_category"));
		int category = Integer.parseInt(request.getParameter("category"));
		float sale = Float.parseFloat(request.getParameter("sale"));
		String time_sale = request.getParameter("time_sale");
		String content = request.getParameter("content");
		
		Product p = new Product();
		p.setIdProduct(idProduct);
		p.setName(name);
		p.setPrice(price);
		p.setIdSubCategory(category);
		p.setDescreption(content);
		
		Sale s = new Sale();
		s.setIdProduct(id);
		s.setSale(sale);
		s.setTime_sale(time_sale);
		
		SaleDao.editSale(s);
		
		ProductDao.editProduct(p);
//		Chuyen doi arraylist sang json
		String messageJson = new Gson().toJson("success");
//		Them json vao json object
		json.addProperty("message", messageJson);
		return json;
	}
	
	protected JsonObject doPost_updateProduct(HttpServletRequest request, HttpServletResponse response) {
		JsonObject json = new JsonObject();
		int id = Integer.parseInt(request.getParameter("id"));
		int size = Integer.parseInt(request.getParameter("size"));
		int color = Integer.parseInt(request.getParameter("color"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int idDetailSize = -1;
		Product p = new Product();
		
		boolean checkFindSize = false;
		List<Size> listSize = SizeDao.getAllSizeByIdProduct(id);
		for(Size s : listSize) {
			if(s.getIdSize() == size) {
				s.setQuantity(s.getQuantity() + quantity);
				idDetailSize = SizeDao.updateDetailSize(s);
//				Thực hiện update lại số lượng thay vì insert vào
				checkFindSize = true;
			}
		}
		
//		Nếu như không tồn tại trong danh sách thì thực hiện thêm mới vào
		if(!checkFindSize) {
			Size s = new Size(id, size, quantity, 1);
			idDetailSize = SizeDao.insertDetailSize(s);
			
		}
//		insert detailsizecolor
		DetailSizeColor d = new DetailSizeColor(idDetailSize, color, quantity, 1);
		DetailSizeColorDao.insertDetailSizeColor(d);
		
//		Thực hiện update lại số lượng tổng của product dựa trên quantity của listSize
		listSize = SizeDao.getAllSizeByIdProduct(id);
		for(Size s : listSize) {
			if(s.getIdProduct() == id) {
				p.setId(id);
				p.setQuantity(p.getQuantity() + s.getQuantity());
				ProductDao.updateProduct(p);
			}
		}
		
//		Chuyen doi arraylist sang json
		String messageJson = new Gson().toJson("success");
//		Them json vao json object
		json.addProperty("message", messageJson);
		return json;
	}
	
	protected JsonObject doPost_addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JsonObject json = new JsonObject();
		String idProduct = request.getParameter("idProduct");
		String name = request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price"));
		int sub_category = Integer.parseInt(request.getParameter("sub_category"));
		int category = Integer.parseInt(request.getParameter("category"));
		float sale = Float.parseFloat(request.getParameter("sale"));
		String time_sale = request.getParameter("time_sale");
		String content = request.getParameter("content");
		String partCategory = "";
		int id = -1;
		Calendar calendar = Calendar.getInstance();
//		Lấy ngày tháng hiện tại
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		
//		Lấy fileName và lưu ảnh vào thư mục
		List<String> fileNames = new ArrayList<String>();
		List<Part> parts = (List<Part>) request.getParts();
		boolean checkFile = false;
		String fileName = "";
		for(int i = 1; i < parts.size(); i++) {
			Part part = parts.get(i);
			if(part.getName().equalsIgnoreCase("file[]")) {
				if(!checkFile) {
					fileName = calendar.getTimeInMillis() + part.getSubmittedFileName();
					fileName = processSaveImageInFolder(category, part, fileName);
//					Thực hiện insert sale
					//		Thực hiện insertProduct
					Product p = new Product(sub_category, 0, 1, idProduct, name, fileName, content, price, dtf.format(now), dtf.format(now));
					id = ProductDao.insertProduct(p);
					Sale s = new Sale(id, 1, sale, time_sale, dtf.format(now), dtf.format(now));
					int idSale = SaleDao.insertSale(s);
				} else {
					fileName = calendar.getTimeInMillis() + part.getSubmittedFileName();
					fileName = processSaveImageDetailInFolder(category, part, fileName);
					ImageProduct image = new ImageProduct(id, 1, fileName, dtf.format(now));
					ImageProductDao.insertImageProduct(image);
				}
				checkFile = true;
			}
		}
		
//		Chuyen doi arraylist sang json
		String messageJson = new Gson().toJson("success");
		String idJson = new Gson().toJson(id);
//		Them json vao json object
		json.addProperty("message", messageJson);
		json.addProperty("id", idJson);
		return json;
	}

	protected String processSaveImageInFolder(int category, Part part, String fileName) throws ServletException, IOException{
		String partCategory = "";
		if(category == 1) {
			partCategory = "male";
			part.write("D:\\phanmem\\Esclip\\JavaWeb\\workspace\\TubeFashtion\\src\\main\\webapp\\assets\\img\\product\\male\\"
					+ File.separator + fileName);
			fileName = partCategory + "/" + fileName;
		} else if(category == 2) {
			partCategory = "female";
			part.write("D:\\phanmem\\Esclip\\JavaWeb\\workspace\\TubeFashtion\\src\\main\\webapp\\assets\\img\\product\\female\\"
					+ File.separator + fileName);
			fileName = partCategory + "/" + fileName;
		} else if(category == 3) {
			partCategory = "children";
			part.write("D:\\phanmem\\Esclip\\JavaWeb\\workspace\\TubeFashtion\\src\\main\\webapp\\assets\\img\\product\\children\\"
					+ File.separator + fileName);
			fileName = partCategory + "/" + fileName;
		}
		return fileName;
	}
	
	protected String processSaveImageDetailInFolder(int category, Part part, String fileName) throws ServletException, IOException{
		String partCategory = "";
		if(category == 1) {
			partCategory = "male";
			part.write("D:\\phanmem\\Esclip\\JavaWeb\\workspace\\TubeFashtion\\src\\main\\webapp\\assets\\img\\product\\male\\detail\\"
					+ File.separator + fileName);
			fileName = partCategory + "/detail/" + fileName;
		} else if(category == 2) {
			partCategory = "female";
			part.write("D:\\phanmem\\Esclip\\JavaWeb\\workspace\\TubeFashtion\\src\\main\\webapp\\assets\\img\\product\\female\\detail\\"
					+ File.separator + fileName);
			fileName = partCategory + "/detail/" + fileName;
		} else if(category == 3) {
			partCategory = "children";
			part.write("D:\\phanmem\\Esclip\\JavaWeb\\workspace\\TubeFashtion\\src\\main\\webapp\\assets\\img\\product\\children\\detail\\"
					+ File.separator + fileName);
			fileName = partCategory + "/detail/" + fileName;
		}
		return fileName;
	}
}
