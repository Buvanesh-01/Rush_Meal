package com.food_Application.model;

public class Restaurant {
	private int restaurant_Id;
	private String restaurant_Name;
	private String cuisine_Type;
	private String delivery_Time;
	private String address;
	private double rating;
	private boolean is_Active;
	private String image_path;
	
	
	
	public Restaurant() {
		super();
	}


	public Restaurant(int restaurant_Id, String restaurant_Name, String cuisine_Type, String delivery_Time, String address,
			Double rating, boolean is_Active, String image_path) {
		super();
		this.restaurant_Id = restaurant_Id;
		this.restaurant_Name = restaurant_Name;
		this.cuisine_Type = cuisine_Type;
		this.delivery_Time = delivery_Time;
		this.address = address;
		this.rating = rating;
		this.is_Active = is_Active;
		this.image_path = image_path;
	}
	

	public Restaurant(String restaurant_Name, String cuisine_Type, String delivery_Time, String address, double rating,
			boolean is_Active, String image_path) {
		super();
		this.restaurant_Name = restaurant_Name;
		this.cuisine_Type = cuisine_Type;
		this.delivery_Time = delivery_Time;
		this.address = address;
		this.rating = rating;
		this.is_Active = is_Active;
		this.image_path = image_path;
	}


	public Restaurant( String restaurant_Name, String cuisine_Type, String address, Double rating,
			boolean is_Active, String image_path,int restaurant_Id) {
		super();
		this.restaurant_Id = restaurant_Id;
		this.restaurant_Name = restaurant_Name;
		this.cuisine_Type = cuisine_Type;
		this.address = address;
		this.rating = rating;
		this.is_Active = is_Active;
		this.image_path = image_path;
	}



	public Restaurant(String restaurant_Name, String cuisine_Type, String address, double rating, boolean is_Active,
			String image_path) {
		super();
		this.restaurant_Name = restaurant_Name;
		this.cuisine_Type = cuisine_Type;
		this.address = address;
		this.rating = rating;
		this.is_Active = is_Active;
		this.image_path = image_path;
	}



	public int getRestaurant_Id() {
		return restaurant_Id;
	}



	public void setRestaurant_Id(int restaurant_Id) {
		this.restaurant_Id = restaurant_Id;
	}



	public  String getRestaurant_Name() {
		return restaurant_Name;
	}



	public void setRestaurant_Name(String restaurant_Name) {
		this.restaurant_Name = restaurant_Name;
	}



	public String getCuisine_Type() {
		return cuisine_Type;
	}



	public void setCuisine_Type(String cuisine_Type) {
		this.cuisine_Type = cuisine_Type;
	}
	

	public String getDelivery_Time() {
		return delivery_Time;
	}



	public void setDelivery_Time(String delivery_Time) {
		this.delivery_Time = delivery_Time;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public Double getRating() {
		return rating;
	}



	public void setRating(Double  rating) {
		this.rating = rating;
	}



	public boolean getIs_Active() {
		return is_Active;
	}



	public void setIs_Active(boolean is_Active) {
		this.is_Active = is_Active;
	}



	public String getImage_path() {
		return image_path;
	}



	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}



	@Override
	public String toString() {
		return "Restaurant [restaurant_Id=" + restaurant_Id + ", restaurant_Name=" + restaurant_Name + ", cuisine_Type="
				+ cuisine_Type + ", delivery_Time=" + delivery_Time + ", address=" + address + ", rating=" + rating
				+ ", is_Active=" + is_Active + ", image_path=" + image_path + "]";
	}
	
}
