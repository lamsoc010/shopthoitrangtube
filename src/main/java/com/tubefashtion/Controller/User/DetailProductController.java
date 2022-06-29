package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.tubefashtion.DAO.ColorDao;
import com.tubefashtion.DAO.ProductDao;
import com.tubefashtion.DAO.SizeDao;
import com.tubefashtion.Model.Color;
import com.tubefashtion.Model.Product;
import com.tubefashtion.Model.Size;

@WebServlet("/DetailProductController")
public class DetailProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DetailProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("id"));
		int idSize = Integer.parseInt(request.getParameter("size"));
		
//		Product
		Product p = ProductDao.getProductById(id);
//		List Size by IdProduct
		List<Size> listSize = SizeDao.getAllSizeByIdProduct(id);
//		List Color by idSize
//		Ý tưởng: Khi click chọn size thì sẽ có 1 ajax gửi lên đây kèm theo idSize, khi đó sẽ trả về listColor ứng với size đó
		List<Color> listColor = ColorDao.getAllColorByIdSize(idSize);
		
//		Chuyen doi arraylist sang json
		String productJson = new Gson().toJson(p);
		String listSizeJson = new Gson().toJson(listSize);
		String listColorJson = new Gson().toJson(listColor);
//		Them json vao json object
		JsonObject json = new JsonObject();
		json.addProperty("product", productJson);
		json.addProperty("listSize", listSizeJson);
		json.addProperty("listColor", listColorJson);
		out.write(json.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
