package com.food_Application.Servlet;

import java.io.IOException;

import com.food_Application.DAOImpl.restaurantDAOImpl;
import com.food_Application.model.Restaurant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/AdminAddRestaurant")

public class AdminAddRestaurant extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		String restaurant_Name = req.getParameter("restaurant_Name");
		String cuisine_Type = req.getParameter("cuisine_Type");
		String delivery_Time = req.getParameter("delivery_Time");
		double rating = Double.parseDouble(req.getParameter("rating"));
		String address = req.getParameter("address");
		boolean is_Active =true;
		String image_Path = req.getParameter("image_Path");
		
		Restaurant restaurant = new Restaurant(restaurant_Name,cuisine_Type,
				delivery_Time,address,rating,is_Active,image_Path);
		
			restaurantDAOImpl dao = new restaurantDAOImpl();
			
		int i=dao.addRestaurant(restaurant);
		
		if(i==1) {
			
			resp.sendRedirect("AdminServlet");
			System.out.println("Restaurant add sucessfully");
		}
		else {
			System.out.println("restaurant not add");
		}
	}

}
