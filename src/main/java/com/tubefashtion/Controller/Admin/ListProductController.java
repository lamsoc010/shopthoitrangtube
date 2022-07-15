package com.tubefashtion.Controller.Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tubefashtion.DAO.ProductDao;
import com.tubefashtion.DAO.UserDao;

@WebServlet("/ListProductController")
public class ListProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String action = request.getParameter("action");

		switch (action) {
		case "views": {
			out.print(gson.toJson(ProductDao.getAllProduct()));
			out.flush();
			out.close();
			break;
		}
		case "detail": {
			int idProduct = Integer.parseInt(request.getParameter("idProduct"));
			out.print(gson.toJson(ProductDao.getProductById(idProduct)));
			out.flush();
			out.close();
			break;
		}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
