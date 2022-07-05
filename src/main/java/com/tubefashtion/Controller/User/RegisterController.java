package com.tubefashtion.Controller.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import com.tubefashtion.DAO.UserDao;
import com.tubefashtion.Model.User;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String message = "";
		
//		get value
		User user = new User();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		
//		Validator
		ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
		Validator validator = validatorFactory.getValidator();
		Set<ConstraintViolation<User>> constraintViolations = validator.validate(user);
		if(constraintViolations.size() > 0) {
			for (ConstraintViolation<User> violation : constraintViolations) {
                message += violation.getMessage() + "<br>";
            }
		} else {
//			Kiểm tra xem email này đã tồn tại trong hệ thống chưa
			List<User> listUser = UserDao.getAllUser();
			boolean checkUnique = true;
			for(int i = 0; i < listUser.size(); i++) {
				if(listUser.get(i).getEmail().equals(email)) {
					message = "Email này đã tồn tại";
					checkUnique = false;
					break;
				}
			}
			if(checkUnique) {
				UserDao.insertUser(user);
				RequestDispatcher rd = request.getRequestDispatcher("/Views/Client/login.jsp");
				rd.forward(request, response);
			}
		}
		out.write(message);
	}

}
