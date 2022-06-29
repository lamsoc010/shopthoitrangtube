package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tubefashtion.DAO.UserLoginDao;
import com.tubefashtion.Model.User;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = UserLoginDao.checkLoginUser(username, password);
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("/Views/Client/index.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("loginError", "Tai khoan hoac mat khau khong dung");
			RequestDispatcher rd = request.getRequestDispatcher("/Views/Client/login.jsp");
			rd.forward(request, response);
		}
	}

}
