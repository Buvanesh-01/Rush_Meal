package com.food_Application.model;

public class Menu {

	   private int menu_Id;
	    private int restaurant_Id;
	    private String item_Name;
	    private String description;
	    private double price;
	    private boolean is_Available;
	    private String image_Path;

	    public Menu() {
	        super();
	    }
	    
	    
		public Menu(int restaurant_Id, String item_Name, String description, double price,
				boolean is_Available, String image_Path,int menu_Id) {
			super();
		
			this.restaurant_Id = restaurant_Id;
			this.item_Name = item_Name;
			this.description = description;
			this.price = price;
			this.is_Available = is_Available;
			this.image_Path = image_Path;
			this.menu_Id = menu_Id;
		}



		public Menu(int menu_Id, int restaurant_Id, String item_Name, String description,
	            double price, boolean is_Available, String image_Path) {
	        super();
	        this.menu_Id = menu_Id;
	        this.restaurant_Id = restaurant_Id;
	        this.item_Name = item_Name;
	        this.description = description;
	        this.price = price;
	        this.is_Available = is_Available;
	        this.image_Path = image_Path;
	    }

	    public Menu(int restaurant_Id, String item_Name, String description,
	            double price, boolean is_Available, String image_Path) {
	        super();
	        this.restaurant_Id = restaurant_Id;
	        this.item_Name = item_Name;
	        this.description = description;
	        this.price = price;
	        this.is_Available = is_Available;
	        this.image_Path = image_Path;
	    }

	    public int getMenu_Id() {
	        return menu_Id;
	    }

	    public void setMenu_Id(int menu_Id) {
	        this.menu_Id = menu_Id;
	    }

	    public int getRestaurant_Id() {
	        return restaurant_Id;
	    }

	    public void setRestaurant_Id(int restaurant_Id) {
	        this.restaurant_Id = restaurant_Id;
	    }

	    public String getItem_Name() {
	        return item_Name;
	    }

	                          public void setItem_Name(String item_Name) {
	        this.item_Name = item_Name;
	    }

	    public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }

	    public double getPrice() {
	        return price;
	    }

	    public void setPrice(double price) {
	        this.price = price;
	    }

	    public boolean getIs_Available() {
	        return is_Available;
	    }

	    public void setIs_Available(boolean is_Available) {
	        this.is_Available = is_Available;
	    }

	    public String getImage_Path() {
	        return image_Path;
	    }

	    public void setImage_Path(String image_Path) {
	        this.image_Path = image_Path;
	    }

	    @Override
	    public String toString() {
	        return "Menu [menu_Id=" + menu_Id + ", restaurant_Id=" + restaurant_Id
	                + ", item_Name=" + item_Name + ", description=" + description
	                + ", price=" + price + ", is_Available=" + is_Available
	                + ", image_Path=" + image_Path + "]";
	    }
}
