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
import com.tubefashtion.DAO.InfoOrderDao;
import com.tubefashtion.DAO.OrdersDao;
import com.tubefashtion.Model.Cart;
import com.tubefashtion.Model.InfoOrder;
import com.tubefashtion.Model.Orders;

/**
 * Servlet implementation class CheckoutController
 */
@WebServlet("/CheckoutController")
public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		List<Cart> listCart = new ArrayList<Cart>();
		InfoOrder info = new InfoOrder();
		Orders order = new Orders();
		int idUser = 0;
		float total = 0;
		int idInfoOrders = 0;
		
		String fullname = request.getParameter("fullname");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String message = request.getParameter("message");
		
		HttpSession session = request.getSession();
		if(session.getAttribute("idUser") != null) {
			idUser = Integer.parseInt(String.valueOf(session.getAttribute("idUser")));
		}
		
//		Khi không có User
		if (session.getAttribute("userId") == null) {
//			Chuyển đổi từ json sang list
			String listCartJson = String.valueOf(session.getAttribute("listCart"));
			Gson gson = new Gson();
			java.lang.reflect.Type type = new TypeToken<List<Cart>>() {
			}.getType();
			listCart = gson.fromJson(listCartJson, type);
		}
//		Khi có user
		else {
			listCart = CartDao.getAllListCart();
			info.setIdUser(idUser);
		}
//		Lấy tổng giá tiền của orders đó
		for (Cart cart : listCart) {
			total += cart.getTotal();
		}
		
//		Xét giá trị cho inforOrder và insert vào database
		info = new InfoOrder(0, fullname, address, phone, message, "2022/1/1", total);
		idInfoOrders = InfoOrderDao.insertInfoOrder(info);

//		Xet gia tri cho orders va insert vào database
		for (Cart cart : listCart) {
			order = new Orders(idInfoOrders, cart.getIdProduct(), 0, cart.getQuantity(), cart.getTotal(), cart.getSize(), cart.getColor());
			OrdersDao.insertOrders(order);
		}
		
//		Chuyen doi arraylist sang json
		String listCartJson = new Gson().toJson(listCart);
		String messageJson = new Gson().toJson(message);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("message", "success");
		session.removeAttribute("listCart");
		out.write(json.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
