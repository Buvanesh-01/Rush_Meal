package com.food_Application.model;

public class CartItem {


	private int Menu_Id;
	private int Restaurant_Id;
	private String name;
	private int  quantity;
	private double Price;
	private String image_Path;
	
	public CartItem() {
		super();
	}



	public CartItem(int menu_Id, int restaurant_Id, String name, int quantity, double price,String image_Path) {
		super();
		Menu_Id = menu_Id;
		Restaurant_Id = restaurant_Id;
		this.name = name;
		this.quantity = quantity;
		Price = price;
		this.image_Path=image_Path;
	}



	public String getImage_Path() {
		return image_Path;
	}



	public void setImage_Path(String image_Path) {
		this.image_Path = image_Path;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getRestaurant_Id() {
		return Restaurant_Id;
	}


	public void setRestaurant_Id(int restaurant_Id) {
		Restaurant_Id = restaurant_Id;
	}


	public int getMenu_Id() {
		return Menu_Id;
	}


	public void setMenu_Id(int menu_Id) {
		Menu_Id = menu_Id;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public double getPrice() {
		return Price;
	}


	public void setPrice(double price) {
		Price = price;
	}



	@Override
	public String toString() {
		return "CartItem [Menu_Id=" + Menu_Id + ", Restaurant_Id=" + Restaurant_Id + ", name=" + name + ", quantity="
				+ quantity + ", Price=" + Price + "]";
	}
	public double getTotalPrice() {
		return quantity * Price;
	}

}
