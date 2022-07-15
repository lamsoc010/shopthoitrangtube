package com.tubefashtion.Controller.Admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.util.Base64;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.google.gson.Gson;
import com.tubefashtion.DAO.UserDao;
import com.tubefashtion.Model.User;

/**
 * Servlet implementation class ListUserController
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
@WebServlet("/ListUserController")
public class ListUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ListUserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Gson gson = new Gson();
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");

		switch (action) {
		case "views": {
			out.print(gson.toJson(UserDao.getAllUser()));
			out.flush();
			out.close();
			break;
		}
		case "detail": {
			int idUser = Integer.parseInt(request.getParameter("idUser"));
			out.print(gson.toJson(UserDao.getUserById(idUser)));
			out.flush();
			out.close();
			break;
		}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");

		switch (action) {
		case "create": {
			doPost_createUser(request, response);
			break;
		}
		case "edit": {
			Calendar calendar = Calendar.getInstance();
//			Lấy fileName và lưu ảnh vào thư mục
			Part part = request.getPart("image");
			String fileName = calendar.getTimeInMillis() + part.getSubmittedFileName();
//			Thực hiện update
			doPost_editUser(request, response, fileName);
			part.write("D:\\phanmem\\Esclip\\JavaWeb\\workspace\\TubeFashtion\\src\\main\\webapp\\assets\\img\\user\\"
					+ File.separator + fileName);
			break;
		}
		}

	}

	public void doPost_createUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		String password = request.getParameter("password");
		String address = request.getParameter("address");

		User user = new User();
		user.setName(name);
		user.setPhone(phone);
		user.setEmail(email);
		user.setBirthday(birthday);
		user.setPassword(password);
		user.setAddress(address);

//		Nếu insert bị lỗi thì trả về lỗi
		if (UserDao.insertUser(user) == null) {
			response.sendError(500);
		}
	}
	
	public void doPost_editUser(HttpServletRequest request, HttpServletResponse response, String fileNameImage) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		String address = request.getParameter("address");
		
		
		User user = new User();
		user.setName(name);
		user.setPhone(phone);
		user.setEmail(email);
		user.setBirthday(birthday);
		user.setAddress(address);
		user.setImage(fileNameImage);

//		Nếu insert bị lỗi thì trả về lỗi
		if (UserDao.updateUser(user) == null) {
			response.sendError(500);
		}
	}


}
