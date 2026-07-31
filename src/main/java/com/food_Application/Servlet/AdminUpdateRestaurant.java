package com.food_Application.Servlet;

import java.io.IOException;

import com.food_Application.DAOImpl.restaurantDAOImpl;
import com.food_Application.model.Restaurant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/AdminUpdateRestaurant")
public class AdminUpdateRestaurant extends HttpServlet{
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String restaurant_Name = req.getParameter("restaurant_Name");
		String cuisine_Type = req.getParameter("cuisine_Type");
		double rating = Double.parseDouble(req.getParameter("rating"));
		String address = req.getParameter("address");
		boolean is_Active =Boolean.parseBoolean(req.getParameter("is_Active"));
		String image_Path = req.getParameter("image_Path");
		int restaurant_Id=Integer.parseInt(req.getParameter("restaurant_Id"));
		
		
		Restaurant restaurant = new Restaurant(restaurant_Name,cuisine_Type,
				address,rating,is_Active,image_Path,restaurant_Id);
		
			restaurantDAOImpl dao = new restaurantDAOImpl();
			
			int i=dao.updateRestaurant(restaurant);
		
		if(i==1) {
			
			resp.sendRedirect("AdminServlet");
			System.out.println("Restaurant update sucessfully");
		}
		else {
			System.out.println("restaurant not update");
		}
		
	}

}
