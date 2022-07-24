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
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.tubefashtion.DAO.CartDao;
import com.tubefashtion.DAO.ColorDao;
import com.tubefashtion.DAO.ImageProductDao;
import com.tubefashtion.DAO.ProductDao;
import com.tubefashtion.DAO.SizeDao;
import com.tubefashtion.DAO.WishListDao;
import com.tubefashtion.Model.Cart;
import com.tubefashtion.Model.Color;
import com.tubefashtion.Model.ImageProduct;
import com.tubefashtion.Model.Product;
import com.tubefashtion.Model.Size;
import com.tubefashtion.Model.WishList;

@WebServlet("/CartProductController")
public class CartProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartProductController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		String action = request.getParameter("action");
		JsonObject json = new JsonObject();
		switch (action) {
		case "detail": {
			json = detailCart(request, response);
			break;
		}
		case "views" : {
			json = viewCart(request, response);
			break;
		}
		case "create": {
			json = addCart(request);
			break;
		}
		case "delete": {
			int idProduct = Integer.parseInt(request.getParameter("idProduct"));
			
			json = deleteCart(request, idProduct);
			break;
		}
		}
		out.write(json.toString());
	}
	
	public static JsonObject detailCart(HttpServletRequest request, HttpServletResponse response) {
		JsonObject json = new JsonObject();
		int id = Integer.parseInt(request.getParameter("id"));
		String size = request.getParameter("size");
		
		
//		List Size by IdProduct
		List<Size> listSize = SizeDao.getAllSizeByIdProduct(id);
		
//		List Color by idSize
//		Ý tưởng: Khi click chọn size thì sẽ có 1 ajax gửi lên đây kèm theo idSize, khi đó sẽ trả về listColor ứng với size đó
		List<Color> listColor = ColorDao.getAllColorByIdSize(size, id);
		
		
		
//		Chuyen doi arraylist sang json
		String listSizeJson = new Gson().toJson(listSize);
		String listColorJson = new Gson().toJson(listColor);
		
//		Them json vao json object
		json.addProperty("listSize", listSizeJson);
		json.addProperty("listColor", listColorJson);
		return json;
	}
	
	public static JsonObject viewCart(HttpServletRequest request, HttpServletResponse response) {
		JsonObject json = new JsonObject();
//		Khai bao
		int userId = 0;
		List<Cart> listCart = new ArrayList<Cart>();
		
		HttpSession session = request.getSession();
		if(session.getAttribute("userId") != null) {
			userId = Integer.parseInt(String.valueOf(session.getAttribute("userId")));
		}
//		Khi không có user
		if(userId == 0) {
			Gson gson = new Gson();
//			Trả về list Cart
			String listCartJson =  String.valueOf(session.getAttribute("listCart"));
		    java.lang.reflect.Type type = new TypeToken<List<Cart>>(){}.getType();
		    listCart = gson.fromJson(listCartJson, type);
		    
		} 
//		Khi co user
		else {
			listCart = CartDao.getAllListCart();
		}
		if(listCart == null) {
			listCart = new ArrayList<Cart>();
		}
		
		
//		Chuyen doi arraylist sang json
		String listCartJson = new Gson().toJson(listCart);
//		Them json vao json object
		json.addProperty("listCart", listCartJson);
		return json;
	}
	
	public static JsonObject deleteCart(HttpServletRequest request, int idProduct) {
		HttpSession session = request.getSession();
		List<Cart> listCart = new ArrayList<Cart>();
		Gson gson = new Gson();
		String message = "";
		
		if(session.getAttribute("userId") == null) {
//			Chuyển đổi từ json sang list
			String listCartJson = String.valueOf(session.getAttribute("listCart"));
			java.lang.reflect.Type type = new TypeToken<List<Cart>>() {
			}.getType();
			listCart = gson.fromJson(listCartJson, type);
//			Thực hiện thao tác xoá
			for(int i = 0; i < listCart.size(); i++) {
				if(listCart.get(i).getIdProduct() == idProduct) {
					listCart.remove(i);
				}
			}
//			Chuyển đổi lại thành json để lưu vào session
			String listCartJson1 = new Gson().toJson(listCart);
			session.setAttribute("listCart", listCartJson1);
			message = "success";
		}
//		Chuyen doi arraylist sang json
		String listCartJson = new Gson().toJson(listCart);
		String messageJson = new Gson().toJson(message);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("listCart", listCartJson);
		json.addProperty("message", messageJson);
		return json;
	}

	public static JsonObject addCart(HttpServletRequest request) {
//		Khởi tạo các biến
		List<Cart> listCart = new ArrayList<Cart>();
		Cart c = new Cart();
		String message = "";
		int idUser;
//		Kiểm tra xem phiên này có User đăng nhập hay không
		HttpSession session = request.getSession();
		if (session.getAttribute("userId") != null) {
			idUser = Integer.parseInt(String.valueOf(session.getAttribute("userId")));
			c.setIdUser(idUser);
		}

//		Lấy ra giá trị request gửi lên
		int idProduct = Integer.parseInt(request.getParameter("idProduct"));
		String size = request.getParameter("size");
		String color = request.getParameter("color");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
//		Lấy sản phẩm theo id và lấy giá trị price và total
		Product p = ProductDao.getProductById(idProduct);
		float price = p.getPrice() - p.getPrice() * p.getSale() / 100;
		float total = price * quantity;
		String image = p.getImage();
		String name = p.getName();

//		Xét giá trị cho cart
		c.setIdProduct(idProduct);
		c.setColor(color);
		c.setSize(size);
		c.setQuantity(quantity);
		c.setPrice(price);
		c.setTotal(total);
		c.setImage(image);
		c.setName(name);

//		Thêm vào lisrCart
//		Khi không có User
		if (session.getAttribute("userId") == null) {
			message = AddToCartNoUser(request, session, message, c);
//			Chuyển đổi từ json sang list
			String listCartJson = String.valueOf(session.getAttribute("listCart"));
			Gson gson = new Gson();
			java.lang.reflect.Type type = new TypeToken<List<Cart>>() {
			}.getType();
			listCart = gson.fromJson(listCartJson, type);
		}
//		Khi có user
		else {
			message = AddToCartUser(request, message, c);
			listCart = CartDao.getAllListCart();
			System.out.println("them san pham co user");
		}

//		Chuyen doi arraylist sang json
		String listCartJson = new Gson().toJson(listCart);
		String messageJson = new Gson().toJson(message);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("listCart", listCartJson);
		json.addProperty("message", messageJson);
		return json;
	}

	public static String AddToCartNoUser(HttpServletRequest request, HttpSession session, String message, Cart cart) {
//		Get all listCart
		String listCartJson = String.valueOf(session.getAttribute("listCart"));

//		Chuyển đổi từ json sang List
		Gson gson = new Gson();
		java.lang.reflect.Type type = new TypeToken<List<Cart>>() {
		}.getType();
		List<Cart> listCart = gson.fromJson(listCartJson, type);
		if (listCart == null) {
			listCart = new ArrayList<Cart>();
		}

//		Kiểm tra xem trong listCart đã có sản phẩm đó chưa
//		Nếu có thì tăng số lượng lên còn không thì tạo mới
		if (listCart.size() == 0) {
			listCart.add(cart);
		} else {
			boolean updateQuantity = false;
			for (Cart c : listCart) {
//				Kiểm tra nếu như trùng id, size và color thì tăng số lượng lên
				if (c.getIdProduct() == cart.getIdProduct() && cart.getSize().equals(c.getSize())
						&& cart.getColor().equals(c.getColor())) {
					c.setQuantity(c.getQuantity() + cart.getQuantity());
					c.setTotal(c.getPrice() * c.getQuantity());
					updateQuantity = true;
				}
			}
//			Nếu không update thì tức là sản phẩm chưa tồn tại, thực hiện thêm mới
			if (!updateQuantity) {
				listCart.add(cart);
			}
		}
		String listCartJson1 = new Gson().toJson(listCart);
		session.setAttribute("listCart", listCartJson1);
		message = "susscess";

		return message;
	}

	public static String AddToCartUser(HttpServletRequest request, String message, Cart cart) {
//		Get all wishlist
		List<Cart> listCart = CartDao.getAllListCart();
//		Kiểm tra xem trong listCart đã có sản phẩm đó chưa
//		Nếu có thì tăng số lượng lên còn không thì tạo mới
		if (listCart.size() == 0) {
			listCart.add(cart);
			CartDao.insertCart(cart);
		} else {
			boolean updateQuantity = false;
			for (Cart c : listCart) {
//				Kiểm tra nếu như trùng id, size và color thì tăng số lượng lên
				if (c.getIdProduct() == cart.getIdProduct() && cart.getSize().equals(c.getSize())
						&& cart.getColor().equals(c.getColor())) {
					c.setQuantity(c.getQuantity() + cart.getQuantity());
					c.setTotal(c.getPrice() * c.getQuantity());
					CartDao.updatedCart(c);
					updateQuantity = true;
				}
			}
//			Nếu không update thì tức là sản phẩm chưa tồn tại, thực hiện thêm mới
			if (!updateQuantity) {
				listCart.add(cart);
				CartDao.insertCart(cart);
			}
		}
		return message;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
