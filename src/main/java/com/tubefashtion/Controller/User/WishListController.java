package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.tubefashtion.DAO.WishListDao;
import com.tubefashtion.Model.WishList;

@WebServlet("/WishListController")
public class WishListController extends HttpServlet {
	SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	private static final long serialVersionUID = 1L;
       
    public WishListController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
//		
		int id = Integer.parseInt(request.getParameter("id"));
//		Insert wishlist
		Date date = new Date();
		WishList w = new WishList();
		w.setIdProduct(id);
		w.setCreated_at(df.format(date));
		w.setUpdated_at(df.format(date));
		
		WishListDao.insertWishList(w);
		
//		Get all wishlist
		List<WishList> listWishLish = WishListDao.getAllWishList();
		
//		Chuyen doi arraylist sang json
		String listWishListJson = new Gson().toJson(listWishLish);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("listWishList", listWishListJson);
		out.write(json.toString());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
