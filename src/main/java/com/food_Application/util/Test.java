package com.food_Application.util;
import java.util.List;
import java.util.Scanner;

import com.food_Application.DAOImpl.menuDAOImpl;
import com.food_Application.DAOImpl.orderDAOImpl;
import com.food_Application.DAOImpl.restaurantDAOImpl;
import com.food_Application.DAOImpl.userDAOImpl;
import com.food_Application.model.Menu;
import com.food_Application.model.Order;
import com.food_Application.model.Restaurant;
import com.food_Application.model.User;

public class Test {
	public static void main(String args[]){

//users
		
		
		
//1.			Add user 
		
		
		/*User user =new User("vishal","vishal@gmail.com","098756","Madurai","customer");
		userDAOImpl userDao=new userDAOImpl();
		userDao.addUser(user);
		*/
		
//2.         Get user
		
		 /*
		  *  userDAOImpl userDao=new userDAOImpl();
		User user=userDao.getUser(1);
		System.out.print(user); 
		
		  */
	
		
//3.         Update user
		
		
		/*User user=new User("Buvanesh M","buvaneshb544@gmail.com","buva1234","colachel","Customer",1);//constructor(s,s,s,s,int);
		userDAOImpl userDao=new userDAOImpl();
		userDao.updateUser(user);
		*/
		
		
//4.        delete user
		
		
		/*
		userDAOImpl userDao=new userDAOImpl();
		userDao.deleteUser(5);
		*/
		
		
		
//5.          List all the user
		/*
		User user=new User();
		userDAOImpl userDao=new userDAOImpl();
		List<User> userList=userDao.getAllUser();
		for(User use: userList) {
			System.out.println(use);
		}
		
	*/

		
//Restaurant 
		
//1.         add Restaurant
		
		
	
		/*
		Restaurant resturant=new Restaurant(  "KFC",
			    "Fast Food",
			    "25-35 mins",
			    "MG Road, Bangalore",
			    4.3,
			    true,
			    "kfc.jpg");
		restaurantDAOImpl resImpl=new restaurantDAOImpl();
		resImpl.addRestaurant(resturant);
		*/
	
	
		
		
//2.          get Restaurant

		/*
		
		restaurantDAOImpl resImpl=new restaurantDAOImpl();
		Restaurant res=resImpl.getRestaurant(1);
		System.out.println(res);
		
		*/
		
		
//3.         Update Restaurant
		/*
		 
		Restaurant rest=new Restaurant("Spice Garden","South Indian, North Indian, Chinese","25, Anna Salai, T. Nagar, Chennai, Tamil Nadu - 600017",4.6,true,"https://l1nq.com/4hetbdt",1);
		restaurantDAOImpl resImpl=new restaurantDAOImpl();
		resImpl.updateRestaurant(rest);
		
	*/
		
//4.       delete Restaurant
		
		
		/*
		restaurantDAOImpl restaurantDAOImpl=new restaurantDAOImpl();
		restaurantDAOImpl.deleteRestaurant(2);
		*/
		
//5.		get All Users
		/*
		Restaurant res =new Restaurant();
		restaurantDAOImpl userDao=new restaurantDAOImpl();
		List<Restaurant> userList=userDao.getAllRestaurant();
		for(Restaurant use: userList) {
			System.out.println(use);
		}
		*/
		
//1.      Add Menu 
		/*
		Menu user =new Menu(4,"mutton Biryani","Hyderabadi Dum Biryani",349.00,true,"images/Mutton_biryani.jpg");
		menuDAOImpl userDao=new menuDAOImpl();
		userDao.addMenu(user);
		*/
		
		
//2. 	get menu
		
		
		/*menuDAOImpl resImpl=new menuDAOImpl();
		Menu res=resImpl.getMenu(1);
		System.out.println(res);
	*/
		
		
		
//3.		update menu
		
		/*Menu rest=new Menu(1,"Chicken Biryani","Hyderabadi Dum Biryani",299.00,true,"images/chicken_biryani.jpg",1);
		menuDAOImpl resImpl=new menuDAOImpl();
		resImpl.updateMenu(rest);
		*/
		
		
//4.		delete menu 
		
		/*
		menuDAOImpl restaurantDAOImpl=new menuDAOImpl();
		restaurantDAOImpl.deleteMenu(1);
		
		*/
		
		
//5.         list all menus
		/*
		Menu res =new Menu();
		menuDAOImpl userDao=new menuDAOImpl();
		List<Menu> userList=userDao.getAllMenu();
		for(Menu use: userList) {
			System.out.println(use);
		}
		
		*/
		

		
		
		
		//ORDER 

//1.       add order;
		/*
		 
		Order order =new Order(1,1992.54,"pending","UPI",3);
		orderDAOImpl userDao=new orderDAOImpl();
		userDao.addOrder(order);
		
		*/
		
//2.      Get order
		/*
		orderDAOImpl resImpl=new orderDAOImpl();
		Order res=resImpl.getOrder(1);
		System.out.println(res);
		
		*/
		
//3.     update order
		
		/*
		Order rest=new Order(1,1992.54,"confirmed","UPI",3,1);
		orderDAOImpl resImpl=new orderDAOImpl();
		resImpl.updateOrder(rest);
		
		*/
		
//4.     Delete orders
		
//5.     List all Order
		
		/*	
		 
		 
		Order res =new Order();
		orderDAOImpl userDao=new orderDAOImpl();
		List<Order> userList=userDao.getAllOrder();
		for(Order use: userList) {
			System.out.println(use);
		}
		
		*/
		
		menuDAOImpl menuDAOImpl = new menuDAOImpl();
		List<Menu> allMenu =menuDAOImpl.getAllMenuByRestaurant(2);
		for(Menu menu:allMenu) {
			System.out.println(menu);
	}
}
}




