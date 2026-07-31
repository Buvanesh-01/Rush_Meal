package com.food_Application.Servlet;

import java.io.IOException;
import java.util.List;

import com.food_Application.DAOImpl.orderDAOImpl;
import com.food_Application.model.Order;
import com.food_Application.model.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/OrderHistoryServlet")
public class OrderHistoryServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("========== OrderHistoryServlet CALLED ==========");
	HttpSession session = req.getSession();
	User user = (User)session.getAttribute("user");
	Integer resturantId = (Integer)session.getAttribute("Restaurant_Id");
	
	if(user==null) {
		resp.sendRedirect("Login.jsp");
		return;
	}
	
	int userId=user.getUser_Id();
	
	 System.out.println("Logged in User ID: " + userId);
	
	orderDAOImpl orderDAO = new orderDAOImpl();
	List<Order> allOrdersByUser = orderDAO.getAllOrdersByUesr(userId);
	 System.out.println("Orders Found: " + allOrdersByUser.size());
	
	req.setAttribute("allOrdersByUser", allOrdersByUser);
	
	RequestDispatcher rd = req.getRequestDispatcher("OrderHistory.jsp");
	rd.forward(req, resp);
	
	}
	
}