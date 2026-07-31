package com.food_Application.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import com.food_Application.DAOImpl.userDAOImpl;
import com.food_Application.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
		String name = request.getParameter("user_name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String role = request.getParameter("role");

		String hashpw = BCrypt.hashpw(password, BCrypt.gensalt(12));

		User user = new User(name,email,hashpw,address,role);

		userDAOImpl dao = new userDAOImpl();
		int i =dao.addUser(user);
		
		if(i==1) {
			response.sendRedirect("Login.jsp");
		}
		else {
			response.sendRedirect("RegisterServlet");
		}
		
	
	        
	
	}
	
}
