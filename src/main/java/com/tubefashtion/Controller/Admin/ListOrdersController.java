package com.tubefashtion.Controller.Admin;

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
import com.tubefashtion.DAO.InfoOrderDao;
import com.tubefashtion.DAO.OrdersDao;
import com.tubefashtion.DAO.ProductDao;
import com.tubefashtion.Model.InfoOrder;
import com.tubefashtion.Model.Orders;

/**
 * Servlet implementation class ListOrdersController
 */
@WebServlet("/ListOrdersController")
public class ListOrdersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListOrdersController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String action = request.getParameter("action");

		switch (action) {
		case "views": {
			out.print(gson.toJson(InfoOrderDao.getAllListOrders()));
			out.flush();
			out.close();
			break;
		}
		case "detail": {
			int idInfoOrder = Integer.parseInt(request.getParameter("idInfoOrder"));
			out.print(gson.toJson(OrdersDao.getAllListOrdersByIdInfoOrder(idInfoOrder)));
			out.flush();
			out.close();
			break;
		}
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
