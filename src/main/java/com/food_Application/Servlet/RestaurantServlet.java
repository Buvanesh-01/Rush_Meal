package com.food_Application.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.food_Application.DAOImpl.restaurantDAOImpl;
import com.food_Application.model.Restaurant;


@WebServlet("/RestaurantServlet")
public class RestaurantServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		restaurantDAOImpl restaurant = new restaurantDAOImpl(); 
		List<Restaurant> allRestaurant = restaurant.getAllRestaurant();
		for(Restaurant res:allRestaurant) {
			System.out.println(res);
		}
		
		
			request.setAttribute("allRestaurant", allRestaurant);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Restaurant.jsp");
			
		requestDispatcher.forward(request, response);
				
			}
}
