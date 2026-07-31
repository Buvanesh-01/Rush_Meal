package com.food_Application.DAO;

import java.util.List;

import com.food_Application.model.OrderItem;

public interface OrderItemDAO {

		void addOrderItem(OrderItem orderItem);

		OrderItem getOrderItem(int orderItem_Id);

		void updateOrderItem(OrderItem orderItem);

		void deleteOrderItem(int orderItem_Id);

		List<OrderItem> getAllOrderItem();

	}
