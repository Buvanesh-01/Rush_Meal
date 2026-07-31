package com.food_Application.Servlet;

import java.io.IOException;
import java.util.List;

import com.food_Application.DAOImpl.orderDAOImpl;
import com.food_Application.DAOImpl.restaurantDAOImpl;
import com.food_Application.DAOImpl.userDAOImpl;
import com.food_Application.model.Order;
import com.food_Application.model.Restaurant;
import com.food_Application.model.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/AdminServlet")

public class AdminServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		restaurantDAOImpl restaurantDAOImpl = new restaurantDAOImpl();
		List<Restaurant> allRestaurant = restaurantDAOImpl.getAllRestaurant();
		userDAOImpl userDAOImpl = new userDAOImpl();
		List<User> Users = userDAOImpl.getAllUser();
		orderDAOImpl orderDAOImpl = new orderDAOImpl();
		List<Order> allOrder = orderDAOImpl.getAllOrder();
		double totalRevenue = orderDAOImpl.TotalRevenue();

		req.setAttribute("allRestaurant", allRestaurant);
		req.setAttribute("Users", Users);
		req.setAttribute("allOrder", allOrder);
		req.setAttribute("totalRevenue", totalRevenue);
		
		RequestDispatcher rd = req.getRequestDispatcher("Admin.jsp");
		rd.forward(req, resp);
	
		
	}

}
