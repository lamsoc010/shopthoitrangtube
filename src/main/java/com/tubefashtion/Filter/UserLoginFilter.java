package com.tubefashtion.Filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//@WebFilter(urlPatterns = {"/login", "/welcome", "/dashboard"})
public class UserLoginFilter implements Filter {

    public UserLoginFilter() {
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("Filter check Login");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		RequestDispatcher rd;
		if(session.getAttribute("user") == null) {
			rd = request.getRequestDispatcher("/Views/Client/login.jsp");
		} else {
			rd = request.getRequestDispatcher("/Views/Client/index.jsp");
		}
		rd.forward(request, response);
		
		chain.doFilter(request, response);
//		response tra ve
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
