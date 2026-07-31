package com.food_Application.model;

public class OrderItem {
	
	private int orderItem_Id;
	private int order_Id;
	private int quantity;
	private double item_Total;
	private int menu_Id;

	public OrderItem() {
		super();
	}

	public OrderItem(int orderItem_Id, int order_Id, int quantity,
			double item_Total, int menu_Id) {
		super();
		this.orderItem_Id = orderItem_Id;
		this.order_Id = order_Id;
		this.quantity = quantity;
		this.item_Total = item_Total;
		this.menu_Id = menu_Id;
	}

	public OrderItem(int order_Id, int quantity,
			double item_Total, int menu_Id) {
		super();
		this.order_Id = order_Id;
		this.quantity = quantity;
		this.item_Total = item_Total;
		this.menu_Id = menu_Id;
	}

	public OrderItem(int order_Id, int quantity,
			double item_Total, int menu_Id, int orderItem_Id) {
		super();
		this.orderItem_Id = orderItem_Id;
		this.order_Id = order_Id;
		this.quantity = quantity;
		this.item_Total = item_Total;
		this.menu_Id = menu_Id;
	}

	public int getOrderItem_Id() {
		return orderItem_Id;
	}

	public void setOrderItem_Id(int orderItem_Id) {
		this.orderItem_Id = orderItem_Id;
	}

	public int getOrder_Id() {
		return order_Id;
	}

	public void setOrder_Id(int order_Id) {
		this.order_Id = order_Id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getItem_Total() {
		return item_Total;
	}

	public void setItem_Total(double item_Total) {
		this.item_Total = item_Total;
	}

	public int getMenu_Id() {
		return menu_Id;
	}

	public void setMenu_Id(int menu_Id) {
		this.menu_Id = menu_Id;
	}

	@Override
	public String toString() {
		return "OrderItem [orderItem_Id=" + orderItem_Id + ", order_Id=" + order_Id + ", quantity=" + quantity
				+ ", item_Total=" + item_Total + ", menu_Id=" + menu_Id + "]";
	}
}
