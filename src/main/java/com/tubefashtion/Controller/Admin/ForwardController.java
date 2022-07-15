package com.tubefashtion.Controller.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForwardController
 */
@WebServlet(urlPatterns = {"/admin/listuser", "/admin/listproduct", "/admin/listorders"})
public class ForwardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ForwardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath = request.getServletPath();
		System.out.println("servletPath: " + servletPath);
		RequestDispatcher rd;
		switch (servletPath) {
			case "/admin/listuser": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/users/ListUsers.jsp");
				rd.forward(request, response);
				break;
			}
			case "/admin/listproduct": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/product/list-product.jsp");
				rd.forward(request, response);
				break;
			}
			case "/admin/listorders": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/product/list-orders.jsp");
				rd.forward(request, response);
				break;
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
