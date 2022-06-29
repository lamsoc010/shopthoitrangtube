package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tubefashtion.DAO.CategoryDao;
import com.tubefashtion.Model.Category;
import com.tubefashtion.Model.SubCategory;

/**
 * Servlet implementation class HomeForward
 */
@WebServlet(urlPatterns = {"/HomeForward"})
public class HomeForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Category> listCategory = CategoryDao.getAllCategory();
		List<SubCategory> listSubCategory = CategoryDao.getAllSubCategory();
		
		getServletContext().setAttribute("listCategory", listCategory);
		getServletContext().setAttribute("listSubCategory", listSubCategory);
		
//		request.setAttribute("listCategory", listCategory);
//		request.setAttribute("listSubCategory", listSubCategory);
		RequestDispatcher rd = request.getRequestDispatcher("/Views/Client/index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
