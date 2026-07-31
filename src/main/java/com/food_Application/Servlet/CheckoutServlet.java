package com.food_Application.Servlet;

import java.io.IOException;
import java.sql.Timestamp;

import com.food_Application.DAOImpl.orderDAOImpl;
import com.food_Application.DAOImpl.orderItemDAOImpl;
import com.food_Application.model.Cart;
import com.food_Application.model.CartItem;
import com.food_Application.model.Order;
import com.food_Application.model.OrderItem;
import com.food_Application.model.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		Cart cart =(Cart) session.getAttribute("cart");
		Integer Resturant_Id =(Integer) session.getAttribute("Restaurant_Id");
		Double payable = (Double)session.getAttribute("payable");
		
		if(user!=null) {
			
			 if(cart!=null && !cart.getItems().isEmpty()) {
				 
				 int user_Id = user.getUser_Id();
				 String paymentMethod = req.getParameter("payment");
				 
				 Order order = new Order(user_Id, 
						 new Timestamp(System.currentTimeMillis()),
						 payable,
						 "Delivered",
						 paymentMethod,
						 Resturant_Id);
				   
				 orderDAOImpl orderDAOImpl = new orderDAOImpl();
				  int order_Id = orderDAOImpl.addOrder(order);
				
				  for(CartItem cartitem:cart.getItems().values()) {
					  
					  int menu_Id = cartitem.getMenu_Id();
					   int quantity = cartitem.getQuantity();
					 double Price = cartitem.getTotalPrice();
					  OrderItem orderItem = new OrderItem(order_Id, quantity, Price, menu_Id);
					  
					  System.out.print(payable);
					  
						  
						  orderItemDAOImpl orderItemDAOImpl = new orderItemDAOImpl();
						  orderItemDAOImpl.addOrderItem(orderItem);
						   
					  }
				  session.removeAttribute("cart");
				  session.removeAttribute("payable");
				  session.removeAttribute("Restaurant_Id");
				  resp.sendRedirect("confirmation.jsp");
			 }
			
		}else {
			
			RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
		
			rd.forward(req, resp);
		
		}
	
	}
}
