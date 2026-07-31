package com.food_Application.Servlet;
import java.io.IOException;
import java.util.List;

import com.food_Application.DAOImpl.menuDAOImpl;
import com.food_Application.DAOImpl.restaurantDAOImpl;
import com.food_Application.model.Menu;
import com.food_Application.model.Restaurant;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/menuServlet")
public class MenuServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	int restaurant_Id = Integer.parseInt(req.getParameter("restaurant_Id"));
	
	
	restaurantDAOImpl restaurant = new restaurantDAOImpl(); 
	Restaurant restarant = restaurant.getRestaurant(restaurant_Id);
	
	menuDAOImpl menuDAOImpl = new menuDAOImpl();
	List<Menu> allMenu =menuDAOImpl.getAllMenuByRestaurant(restaurant_Id);
	
	
	for(Menu menu:allMenu) {
		System.out.println(menu);
	}
	req.setAttribute("allMenu", allMenu);
	req.setAttribute("restarant", restarant);
	RequestDispatcher rd = req.getRequestDispatcher("Menu.jsp");
	rd.forward(req, resp);
	
	}

}
