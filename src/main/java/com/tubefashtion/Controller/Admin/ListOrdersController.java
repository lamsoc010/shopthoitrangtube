package com.tubefashtion.Controller.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tubefashtion.DAO.ColorDao;
import com.tubefashtion.DAO.InfoOrderDao;
import com.tubefashtion.DAO.OrdersDao;
import com.tubefashtion.DAO.ProductDao;
import com.tubefashtion.DAO.SizeDao;
import com.tubefashtion.Model.Color;
import com.tubefashtion.Model.InfoOrder;
import com.tubefashtion.Model.Orders;
import com.tubefashtion.Model.Product;
import com.tubefashtion.Model.Size;

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
		case "checkProduct": {
			int idOrder = Integer.parseInt(request.getParameter("idOrder"));
			Orders o = OrdersDao.getOrderById(idOrder);
			int idInfoOrder = o.getIdInfoOrder();
			int idProduct = o.getIdProduct();
			String size = o.getSize();
			String color = o.getColor();
			int quantity = o.getQuantity();
//			Thay đổi trạng thái của orders và listorder
			o.setStatus(1);
			OrdersDao.updateOrder(o);
			
			
			List<Size> listSize = SizeDao.getAllSizeByIdProduct(idProduct);
			List<Color> listDetailSize = ColorDao.getAllColorByIdSize(size, idProduct);
			
			int idDetailSize = -1;
			
//			Trừ số lượng ở bảng detailsize
			for(Size s : listSize) {
				if(s.getSize().equalsIgnoreCase(size)) {
					s.setQuantity(s.getQuantity() - quantity);
					SizeDao.updateDetailSize(s);
					idDetailSize = s.getId();
				}
			}
			
//			Trừ số lượng ở bảng detailsizecolor
			for(Color c : listDetailSize) {
				if(c.getColor().equalsIgnoreCase(color)) {
					c.setQuantity(c.getQuantity() - quantity);
					ColorDao.updateDetailSizeColor(c);
				}
			}
			
//			Trừ số lượng ở bảng products
			Product p = ProductDao.getProductById(idProduct);
			p.setQuantity(p.getQuantity() - quantity);
			ProductDao.updateProduct(p);
			
//			Xử lý thay đổi trạng thái của infoorder
			List<Orders> listOrder = OrdersDao.getAllListOrdersByIdInfoOrder(idInfoOrder);
			int dem = 0;
			for(Orders od : listOrder) {
				if(od.getStatus() == 1) {
					dem += 1;
				}
			}
			InfoOrder i = new InfoOrder();
			System.out.print(listOrder.size());
			System.out.print(idInfoOrder);
			i.setId(o.getIdInfoOrder());
			if(dem == listOrder.size()) {
				i.setStatus(2);
			} else if(dem > 0 && dem < listOrder.size()) {
				i.setStatus(1);
			}
			InfoOrderDao.updateInfoOrder(i);
			
			
			out.print(gson.toJson("success"));
			out.flush();
			out.close();
			
			break;
		}
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
