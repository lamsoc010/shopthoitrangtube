package com.tubefashtion.Filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.tubefashtion.DAO.CategoryDao;
import com.tubefashtion.Model.Category;
import com.tubefashtion.Model.SubCategory;

@WebFilter("/*")
public class SetCharactor implements Filter {

    public SetCharactor() {
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		 request.setCharacterEncoding("UTF-8");
		 HttpServletRequest req = (HttpServletRequest) request;
		 HttpSession session = req.getSession();
		 if(session.getAttribute("listCategory") == null || session.getAttribute("listSubCategory") == null ) {
			List<Category> listCategory = CategoryDao.getAllCategory();
			List<SubCategory> listSubCategory = CategoryDao.getAllSubCategory();
				
			session.setAttribute("listCategory", listCategory);
			session.setAttribute("listSubCategory", listSubCategory);
		 }
		 chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
