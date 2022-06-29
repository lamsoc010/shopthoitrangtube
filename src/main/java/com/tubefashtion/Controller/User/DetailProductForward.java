package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

@WebServlet(urlPatterns = {"/detail"})
public class DetailProductForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DetailProductForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		if(request.getParameter("id") == null) {
			RequestDispatcher rd = request.getRequestDispatcher("Views/Client/404.page.html");
		} else {
			id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("idProduct", id);
		}
		RequestDispatcher rd = request.getRequestDispatcher("Views/Client/detail.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
