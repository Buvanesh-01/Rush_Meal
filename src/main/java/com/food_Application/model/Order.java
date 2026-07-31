package com.food_Application.model;

import java.sql.Timestamp;

public class Order {
	
	private int order_Id;
	private int user_Id;
	private Timestamp order_Date;
	private double total_Amount;
	private String status;
	private String payment_Method;
	private int restaurant_Id;

	public Order() {
		super();
	}

	

	public Order(int order_Id, int user_Id, Timestamp order_Date, double total_Amount, String status,
			String payment_Method, int restaurant_Id) {
		super();
		this.order_Id = order_Id;
		this.user_Id = user_Id;
		this.order_Date = order_Date;
		this.total_Amount = total_Amount;
		this.status = status;
		this.payment_Method = payment_Method;
		this.restaurant_Id = restaurant_Id;
	}

	




	public Order(int user_Id, Timestamp order_Date, double total_Amount, String status, String payment_Method,
			int restaurant_Id) {
		super();
		this.user_Id = user_Id;
		this.order_Date = order_Date;
		this.total_Amount = total_Amount;
		this.status = status;
		this.payment_Method = payment_Method;
		this.restaurant_Id = restaurant_Id;
	}



	public int getOrder_Id() {
		return order_Id;
	}

	public void setOrder_Id(int order_Id) {
		this.order_Id = order_Id;
	}

	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public Timestamp getOrder_Date() {
		return order_Date;
	}

	public void setOrder_Date(Timestamp order_Date) {
		this.order_Date = order_Date;
	}

	public double getTotal_Amount() {
		return total_Amount;
	}

	public void setTotal_Amount(double total_Amount) {
		this.total_Amount = total_Amount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPayment_Method() {
		return payment_Method;
	}

	public void setPayment_Method(String payment_Method) {
		this.payment_Method = payment_Method;
	}

	public int getRestaurant_Id() {
		return restaurant_Id;
	}

	public void setRestaurant_Id(int restaurant_Id) {
		this.restaurant_Id = restaurant_Id;
	}

	@Override
	public String toString() {
		return "Order [order_Id=" + order_Id + ", user_Id=" + user_Id + ", order_Date=" + order_Date
				+ ", total_Amount=" + total_Amount + ", status=" + status + ", payment_Method=" + payment_Method
				+ ", restaurant_Id=" + restaurant_Id + "]";
	}

}
