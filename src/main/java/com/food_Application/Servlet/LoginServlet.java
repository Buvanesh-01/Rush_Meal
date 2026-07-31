package com.food_Application.Servlet;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import com.food_Application.DAOImpl.userDAOImpl;
import com.food_Application.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		HttpSession session = req.getSession();
		userDAOImpl userDAOImpl = new userDAOImpl();
		User user = userDAOImpl.getUserByUserEmail(email);
		String DB_password = user.getPassword() 
;		
		if(BCrypt.checkpw(password,DB_password)) {
			session.setAttribute("user",user);
			resp.sendRedirect("RestaurantServlet");
		}
		else {
			resp.getWriter().print("<h1>create an acount then try..</h1>");
		}
	
	}

}
