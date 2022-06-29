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
import com.tubefashtion.Model.Product;

/**
 * Servlet implementation class SoftProductController
 */
@WebServlet("/SortProductController")
public class SortProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SortProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String value = request.getParameter("sort");
		List<Product> listProduct = new ArrayList<Product>();
		if(value.equals("nameUp")) {
			String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.idSale = sale.id order by products.name asc";
			listProduct = ProductDao.getListProductSort(sql);
		} else if(value.equals("nameDown")) {
			String sql = "select products.*, sale.sale, sale.time_sale from products left join sale on products.idSale = sale.id order by products.name desc";
			listProduct = ProductDao.getListProductSort(sql);
		} else if(value.equals("priceUp")) {
			String sql = "select products.*, sale.sale, sale.time_sale, (price - if(sale.sale != \"null\", price*sale.sale/100, 0)) as priceSort "
					+ "from products left join sale on products.idSale = sale.id order by priceSort asc";
			listProduct = ProductDao.getListProductSort(sql);
		} else if(value.equals("priceDown")) {
			String sql = "select products.*, sale.sale, sale.time_sale, (price - if(sale.sale != \"null\", price*sale.sale/100, 0)) as priceSort "
					+ "from products left join sale on products.idSale = sale.id order by priceSort desc";
			listProduct = ProductDao.getListProductSort(sql);
		}
		
		
		
		String listProductJson = new Gson().toJson(listProduct);
		JsonObject json = new JsonObject();
		json.addProperty("listProductSoft", listProductJson);
		
		out.write(json.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
