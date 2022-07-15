package com.tubefashtion.Controller.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShopListForward
 */
@WebServlet(urlPatterns = {"/shop-list-1","/shop-list-2","/shop-list-3"})
public class ShopListForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShopListForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String servletPath = request.getServletPath();
		System.out.println("servletPath: " + servletPath);
		RequestDispatcher rd;
		switch (servletPath) {
			case "/shop-list-1": {
				request.setAttribute("category", "Nam");
				rd = request.getRequestDispatcher("/Views/Client/shop-list-nam.jsp");
				rd.forward(request, response);
				break;
			}
			case "/shop-list-2": {
				request.setAttribute("category", "Nữ");
				rd = request.getRequestDispatcher("/Views/Client/shop-list-nu.jsp");
				rd.forward(request, response);
				break;
			}
			case "/shop-list-3": {
				request.setAttribute("category", "Trẻ Em");
				rd = request.getRequestDispatcher("/Views/Client/shop-list-treem.jsp");
				rd.forward(request, response);
				break;
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
