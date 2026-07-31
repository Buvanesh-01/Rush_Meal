package com.food_Application.DAO;
import java.util.List;

import com.food_Application.model.Menu;

public interface MenuDAO {


	    void addMenu(Menu menu);

	    Menu getMenu(int menu_Id);

	    void updateMenu(Menu menu);

	    void deleteMenu(int menu_Id);

	    List<Menu> getAllMenu();
	    
	    List<Menu> getAllMenuByRestaurant(int restaurant_Id );
	}
