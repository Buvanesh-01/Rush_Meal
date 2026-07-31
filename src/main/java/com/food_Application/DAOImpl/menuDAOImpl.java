package com.food_Application.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.food_Application.DAO.MenuDAO;
import com.food_Application.model.Menu;
import com.food_Application.util.DB_connection;

public class menuDAOImpl implements MenuDAO {

		private static final String Insert_Query = "insert into menu (restaurant_Id,item_Name,description,price,is_Available,image_Path)"
				+ " values(?,?,?,?,?,?)";

		private static final String Select_Query = "select * from menu where menu_Id=?";

		private static final String Update_Query = "update menu set restaurant_Id=?, item_Name=?, description=?, price=?, is_Available=?, image_Path=? where menu_Id=?";

		private static final String Delete_Query = "delete from menu where menu_Id=?";

		private static final String Get_All_Menu = "select * from menu";
		private static final String GET_ALL_MENU_BY_RESTAURANT = "SELECT * FROM menu WHERE restaurant_Id = ?";

		

		@Override
		public void addMenu(Menu menu) {

			Connection connection = DB_connection.getConnection();

			try {
				PreparedStatement pstm = connection.prepareStatement(Insert_Query);

				pstm.setInt(1, menu.getRestaurant_Id());
				pstm.setString(2, menu.getItem_Name());
				pstm.setString(3, menu.getDescription());
				pstm.setDouble(4, menu.getPrice());
				pstm.setBoolean(5, menu.getIs_Available());
				pstm.setString(6, menu.getImage_Path());

				pstm.executeUpdate();

				System.out.println("Menu data stored successfully");

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public Menu getMenu(int menu_Id) {

			Connection connection = DB_connection.getConnection();
			Menu menu = null;

			try {

				PreparedStatement pstm = connection.prepareStatement(Select_Query);
				pstm.setInt(1, menu_Id);

				ResultSet res = pstm.executeQuery();

				while (res.next()) {

					int menu_Id1 = res.getInt("menu_Id");
					int restaurant_Id = res.getInt("restaurant_Id");
					String item_Name = res.getString("item_Name");
					String description = res.getString("description");
					double price = res.getDouble("price");
					boolean is_Available = res.getBoolean("is_Available");
					String image_Path = res.getString("image_Path");

					menu = new Menu(menu_Id1, restaurant_Id, item_Name, description, price, is_Available, image_Path);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

			return menu;
		}

		@Override
		public void updateMenu(Menu menu) {

			Connection connection = DB_connection.getConnection();

			try {

				PreparedStatement pstm = connection.prepareStatement(Update_Query);

				pstm.setInt(1, menu.getRestaurant_Id());
				pstm.setString(2, menu.getItem_Name());
				pstm.setString(3, menu.getDescription());
				pstm.setDouble(4, menu.getPrice());
				pstm.setBoolean(5, menu.getIs_Available());
				pstm.setString(6, menu.getImage_Path());
				pstm.setInt(7, menu.getMenu_Id());

				pstm.executeUpdate();

				System.out.println("Menu updated successfully");

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public void deleteMenu(int menu_Id) {

			Connection connection = DB_connection.getConnection();

			try {

				PreparedStatement pstm = connection.prepareStatement(Delete_Query);

				pstm.setInt(1, menu_Id);

				pstm.executeUpdate();

				System.out.println("Menu deleted successfully");

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public List<Menu> getAllMenu() {

			List<Menu> list = new ArrayList<>();

			Connection connection = DB_connection.getConnection();

			try {

				PreparedStatement pstm = connection.prepareStatement(Get_All_Menu);

				ResultSet res = pstm.executeQuery();

				while (res.next()) {

					int menu_Id = res.getInt("menu_Id");
					int restaurant_Id = res.getInt("restaurant_Id");
					String item_Name = res.getString("item_Name");
					String description = res.getString("description");
					double price = res.getDouble("price");
					boolean is_Available = res.getBoolean("is_Available");
					String image_Path = res.getString("image_Path");

					Menu menu = new Menu(menu_Id, restaurant_Id, item_Name, description, price, is_Available,
							image_Path);

					list.add(menu);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

			return list;
		}

		@Override
		public List<Menu> getAllMenuByRestaurant(int restaurant_Id) {
			
			List<Menu> list = new ArrayList<>();

			Connection connection = DB_connection.getConnection();
			try {
				PreparedStatement pstm = connection.prepareStatement(GET_ALL_MENU_BY_RESTAURANT);
				pstm.setInt(1, restaurant_Id);
				ResultSet res=pstm.executeQuery();	
				 while (res.next()) {

		                Menu menu = new Menu();

		                menu.setMenu_Id(res.getInt("menu_Id"));
		                menu.setRestaurant_Id(res.getInt("restaurant_Id"));
		                menu.setItem_Name(res.getString("item_Name"));
		                menu.setDescription(res.getString("description"));
		                menu.setPrice(res.getDouble("price"));
		                menu.setIs_Available(res.getBoolean("is_Available"));
		                menu.setImage_Path(res.getString("image_Path"));

		                
		                list.add(menu);
				 }
	}
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
		}
	}
