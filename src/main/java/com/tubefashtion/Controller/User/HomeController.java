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
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.tubefashtion.DAO.CartDao;
import com.tubefashtion.DAO.WishListDao;
import com.tubefashtion.Model.Cart;
import com.tubefashtion.Model.WishList;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Khai bao
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		int userId = 0;
		List<Cart> listCart = new ArrayList<Cart>();
		List<WishList> listWishList = new ArrayList<WishList>();
		
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
		    
//		    Tra ve list Wishlist
			String listWishListJson =  String.valueOf(session.getAttribute("listWishList"));
		    java.lang.reflect.Type type1 = new TypeToken<List<WishList>>(){}.getType();
		    listWishList = gson.fromJson(listWishListJson, type);
		} 
//		Khi co user
		else {
			listCart = CartDao.getAllListCart();
			listWishList = WishListDao.getAllWishList();
		}
		if(listCart == null) {
			listCart = new ArrayList<Cart>();
		}
		if(listWishList == null) {
			listWishList = new ArrayList<WishList>();
		}
//		Chuyen doi arraylist sang json
		String listCartJson = new Gson().toJson(listCart);
		String listWishListJson = new Gson().toJson(listWishList);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("listCart", listCartJson);
		json.addProperty("listWishList", listWishListJson);
		out.write(json.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
