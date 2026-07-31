package com.food_Application.Servlet;

import java.io.IOException;

import com.food_Application.DAOImpl.menuDAOImpl;
import com.food_Application.model.Cart;
import com.food_Application.model.CartItem;
import com.food_Application.model.Menu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		HttpSession session = req.getSession();
		Cart cart = (Cart)session.getAttribute("cart");
		int  newResturantId = Integer.parseInt(req.getParameter("Restaurant_Id"));
		Integer resturantId = (Integer)session.getAttribute("Restaurant_Id");

		if(cart==null || resturantId!=newResturantId)
		{
			cart = new Cart();

			session.setAttribute("cart", cart);
			session.setAttribute("Restaurant_Id", newResturantId);
			
			
		}

		String action = req.getParameter("action");

		if(action.equals("add")) {

			addItemToCart(req,cart);
		}
		else if(action.equals("update")) {

			UpdateItemToCart(req,cart);
		}
		else if(action.equals("delete")){

			RemoveItemToCart(req,cart);
		}	
		
		RequestDispatcher rd = req.getRequestDispatcher("Cart.jsp");
		rd.forward(req, resp);
	}

	private void addItemToCart(HttpServletRequest req, Cart cart) {

		int Menu_Id =Integer.parseInt(req.getParameter("Menu_Id"));

		int quantity = Integer.parseInt(req.getParameter("quantity"));



		menuDAOImpl menuDAOImpl = new menuDAOImpl();
		Menu menu = menuDAOImpl.getMenu(Menu_Id);
		
		HttpSession session = req.getSession();
		session.setAttribute("Restaurant_Id",menu.getRestaurant_Id());
		
		CartItem cartItem = new CartItem(menu.getMenu_Id(),menu.getRestaurant_Id() 
				, menu.getItem_Name()
				,quantity,menu.getPrice(),
				menu.getImage_Path());
		
		
		cart.addItem(cartItem);
	}

	private void UpdateItemToCart(HttpServletRequest req, Cart cart) {
		
		int Menu_Id = Integer.parseInt(req.getParameter("Menu_Id"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		
		cart.updateItem(Menu_Id,quantity);
		
	}

	private void RemoveItemToCart(HttpServletRequest req, Cart cart) {
		// TODO Auto-generated method stub
		int Menu_Id = Integer.parseInt(req.getParameter("Menu_Id"));
		cart.remove(Menu_Id);

	}



}
