package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.sun.jdi.Type;
import com.tubefashtion.DAO.WishListDao;
import com.tubefashtion.Model.WishList;

@WebServlet("/WishListController")
public class WishListController extends HttpServlet {
	static SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	private static final long serialVersionUID = 1L;
       
    public WishListController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String message = "";
		HttpSession session = request.getSession();
		int idUser = 1;
		if(session.getAttribute("userId") != null) {
			idUser = Integer.parseInt(String.valueOf(session.getAttribute("userId")));			
		}
		List<WishList> listWishList = new ArrayList<WishList>();
//		Khi có user
		if(session.getAttribute("user") != null) {
			message = WishListUser(request,message,idUser); 
//			Lấy lại listWishList sau khi thêm vào danh sách
			listWishList = WishListDao.getAllWishList();
		} 
//		Khi không có user
		else {
			message = WishListNoUser(request, session, message);
			String listWishListJson =  String.valueOf(session.getAttribute("listWishList"));
//			Chuyển đổi từ json sang list
			Gson gson = new Gson();
		    java.lang.reflect.Type type = new TypeToken<List<WishList>>(){}.getType();
		    listWishList = gson.fromJson(listWishListJson, type);
		}
		
//		Chuyen doi arraylist sang json
		String listWishListJson = new Gson().toJson(listWishList);
		String messageJson = new Gson().toJson(message);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("listWishList", listWishListJson);
		json.addProperty("message", messageJson);
		out.write(json.toString());
	}

	public static String WishListUser(HttpServletRequest request, String message, int idUser) {
//		Get all wishlist
		List<WishList> listWishLish = WishListDao.getAllWishList();
		
//		Nếu như có id gửi lên (Tức là add vào wishlist thì thực hiện thêm vào wishlist)
//		Nếu không thì trả về listWishList để render bình thường
		if(request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
//			Nếu như idProduct đã trùng trong list thì không thực hiện add
			for(int i = 0; i < listWishLish.size(); i++) {
				if(listWishLish.get(i).getIdProduct() == id) {
					message = "error";
					break;
				}
			}
//			Nếu như message = "" tức là sản phẩm chưa trùng thì insert vào wishlist
			if(message.equals("")) {
				//Insert wishlist
				Date date = new Date();
				WishList w = new WishList();
				w.setIdProduct(id);
//				Thêm idUser vào
				w.setIdUser(idUser);
				w.setCreated_at(df.format(date));
				w.setUpdated_at(df.format(date));
				
				WishListDao.insertWishList(w);
				message = "susscess";
			}
		}
		
		return message;
	}
	
	public static String WishListNoUser(HttpServletRequest request,HttpSession session, String message) {
//		Get all wishlist
		String listWishListJson =String.valueOf(session.getAttribute("listWishList"));
		
//		Chuyển đổi từ json sang List
		Gson gson = new Gson();
	    java.lang.reflect.Type type = new TypeToken<List<WishList>>(){}.getType();
	    List<WishList> listWishList = gson.fromJson(listWishListJson, type);
		if(listWishList == null) {
			listWishList = new ArrayList<WishList>();
		}
		
//		Nếu như có id gửi lên (Tức là add vào wishlist thì thực hiện thêm vào wishlist)
//		Nếu không thì trả về listWishList để render bình thường
		if(request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
//			Nếu như idProduct đã trùng trong list thì không thực hiện add
				for(int i = 0; i < listWishList.size(); i++) {
					if(listWishList.get(i).getIdProduct() == id) {
						message = "error";
						break;
					}
				}
//			Nếu như message = "" tức là sản phẩm chưa trùng thì insert vào wishlist
			if(message.equals("")) {
				//Insert wishlist
				Date date = new Date();
				WishList w = WishListDao.getWishListByIdProduct(id);
				listWishList.add(w);
				
				String listWishListJson1 = new Gson().toJson(listWishList);
				session.setAttribute("listWishList", listWishListJson1);
				message = "susscess";
			}
		}
		
		return message;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
