package com.food_Application.DAO;
import com.food_Application.model.Restaurant;
import java.util.List;

public interface RestaurantDAO {
	
	int addRestaurant(Restaurant restaurant);
	Restaurant getRestaurant(int restaurant_Id);
	 int updateRestaurant(Restaurant restaurant);
	void deleteRestaurant(int restaurant_Id);
	List<Restaurant> getAllRestaurant();
}
