package com.food_Application.DAO;

import java.util.List;

import com.food_Application.model.Order;

public interface OrderDAO {

	
	 int addOrder(Order order);

	 Order getOrder(int order_Id);

	    void updateOrder(Order order);

	    void deleteOrder(int order_Id);
	    
	    double TotalRevenue();
	    
	    List<Order> getAllOrder();
	    
	    List<Order> getAllOrdersByUesr(int user_Id);
}
