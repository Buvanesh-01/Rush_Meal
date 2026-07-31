package com.food_Application.DAOImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.food_Application.DAO.RestaurantDAO;
import com.food_Application.model.Restaurant;
import com.food_Application.util.DB_connection;

public class restaurantDAOImpl implements RestaurantDAO{

	private static final String Insert_Query="insert into restaurants (restaurant_Name,cuisine_Type,delivery_Time,address,rating,is_Active,image_Path)"
			+ "values(?,?,?,?,?,?,?)";
	private static final String Select_Query="select * from restaurants "
			+ " where restaurant_Id =?";
	private static final String Update_Query =  "UPDATE restaurants SET restaurant_Name=?, cuisine_Type=?, address=? ,rating=?,is_Active=?"
			+ ",image_Path=? WHERE restaurant_Id=?";
	private static final String Delete_Query =  "delete from restaurants where restaurant_Id=?";
	private static final String Get_All_User="select * from restaurants";


	@Override
	public int addRestaurant(Restaurant restaurant) {

		Connection connection=DB_connection.getConnection();
		int i=0;

		try {
			PreparedStatement psmt=connection.prepareStatement(Insert_Query);

			psmt.setString(1,restaurant.getRestaurant_Name());
			psmt.setString(2,restaurant.getCuisine_Type());
			psmt.setString(3,restaurant.getDelivery_Time());
			psmt.setString(4,restaurant.getAddress());
			psmt.setDouble(5,restaurant.getRating());
			psmt.setBoolean(6,restaurant.getIs_Active());
			psmt.setString(7,restaurant.getImage_path());

			 i= psmt.executeUpdate();

			System.out.println("Restaurant data store succesfully");
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return i;

	}

	@Override
	public Restaurant getRestaurant(int restaurant_Id) {

		Connection connection=DB_connection.getConnection();
		Restaurant restaurant=null;

		try {
			PreparedStatement pstm= connection.prepareStatement(Select_Query);
			pstm.setInt(1,restaurant_Id);
			ResultSet res=pstm.executeQuery();
			while(res.next()) {
				int restaurant_Id1=res.getInt("restaurant_Id");		
				String restaurant_Name=res.getString("restaurant_Name");
				String cuisine_Type=res.getString("cuisine_Type");
				String delivery_Time=res.getString("delivery_Time");
				String address=res.getString("address");
				double rating=res.getDouble("rating");
				boolean is_Active=res.getBoolean("is_Active");
				String image_Path=res.getString("image_Path");
				restaurant=new Restaurant(restaurant_Id1,restaurant_Name,cuisine_Type,delivery_Time,address,rating,is_Active,image_Path);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return restaurant;
	}

	@Override
	public int updateRestaurant(Restaurant restaurant) {

	    int i = 0;

	    Connection connection = DB_connection.getConnection();

	    try {

	        PreparedStatement psmt =
	                connection.prepareStatement(Update_Query);

	        psmt.setString(1, restaurant.getRestaurant_Name());
	        psmt.setString(2, restaurant.getCuisine_Type());
	        psmt.setString(3, restaurant.getAddress());
	        psmt.setDouble(4, restaurant.getRating());
	        psmt.setBoolean(5, restaurant.getIs_Active());
	        psmt.setString(6, restaurant.getImage_path());
	        psmt.setInt(7, restaurant.getRestaurant_Id());

	        i = psmt.executeUpdate();

	        System.out.println("Rows updated: " + i);

	    } catch (SQLException e) {

	        e.printStackTrace();
	    }

	    return i;
	}

	@Override
	public void deleteRestaurant(int restaurant_Id) {
		Connection connection=DB_connection.getConnection();
		try {
			PreparedStatement pstm= connection.prepareStatement(Delete_Query);
			pstm.setInt(1,restaurant_Id);
			int i=pstm.executeUpdate();
			System.out.print("Restaurant delete sucessfully");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Restaurant> getAllRestaurant() {
		 List<Restaurant> list = new ArrayList<>();
		    Connection connection = DB_connection.getConnection();

		    try {
		        PreparedStatement pstm = connection.prepareStatement(Get_All_User);
		        ResultSet res = pstm.executeQuery();

		        while (res.next()) {

		            int restaurant_Id = res.getInt("restaurant_Id");
		            String restaurant_Name = res.getString("restaurant_Name");
		            String cuisine_Type = res.getString("cuisine_Type");
		            String delivery_Time = res.getString("delivery_Time");
		            String address = res.getString("address");
		            double rating = res.getDouble("rating");
		            boolean is_Active = res.getBoolean("is_Active");
		            String image_Path = res.getString("image_Path");

		            Restaurant restaurant = new Restaurant(restaurant_Id,restaurant_Name, cuisine_Type, delivery_Time,address,rating,is_Active,image_Path);

		            list.add(restaurant);
		        }

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return list;
	}
}

