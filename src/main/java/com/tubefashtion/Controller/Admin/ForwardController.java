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
@WebServlet(urlPatterns = {"/admin/user/listuser", "/admin/product/listproduct", "/admin/product/listorders", "/admin/product/newproduct", "/admin/product/editproduct"})
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
			case "/admin/user/listuser": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/users/ListUsers.jsp");
				rd.forward(request, response);
				break;
			}
			case "/admin/product/listproduct": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/product/list-product.jsp");
				rd.forward(request, response);
				break;
			}
			case "/admin/product/listorders": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/product/list-orders.jsp");
				rd.forward(request, response);
				break;
			}
			case "/admin/product/newproduct": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/product/new-product.jsp");
				rd.forward(request, response);
				break;
			}
			case "/admin/product/editproduct": {
				rd = request.getRequestDispatcher("/Views/Admin/pages/product/edit-product.jsp");
				int id = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("idProduct", id);
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
