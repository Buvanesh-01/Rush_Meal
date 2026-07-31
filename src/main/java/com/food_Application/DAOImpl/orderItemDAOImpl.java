package com.food_Application.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.food_Application.DAO.OrderItemDAO;
import com.food_Application.model.OrderItem;
import com.food_Application.util.DB_connection;

public class orderItemDAOImpl implements OrderItemDAO{

		private static final String Insert_Query =
				"insert into OrderItem (order_Id,quantity,item_Total,menu_Id) values(?,?,?,?)";

		private static final String Select_Query =
				"select * from OrderItem where orderItem_Id=?";

		private static final String Update_Query =
				"update OrderItem set order_Id=?, quantity=?, item_Total=?, menu_Id=? where orderItem_Id=?";

		private static final String Delete_Query =
				"delete from OrderItem where orderItem_Id=?";

		private static final String Get_All_OrderItem =
				"select * from OrderItem";

		@Override
		public void addOrderItem(OrderItem orderItem) {

			Connection connection = DB_connection.getConnection();

			try {

				PreparedStatement pstm = connection.prepareStatement(Insert_Query);

				pstm.setInt(1, orderItem.getOrder_Id());
				pstm.setInt(2, orderItem.getQuantity());
				pstm.setDouble(3, orderItem.getItem_Total());
				pstm.setInt(4, orderItem.getMenu_Id());

				pstm.executeUpdate();

				System.out.println("OrderItem data stored successfully");

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public OrderItem getOrderItem(int orderItem_Id) {

			Connection connection = DB_connection.getConnection();
			OrderItem orderItem = null;

			try {

				PreparedStatement pstm = connection.prepareStatement(Select_Query);
				pstm.setInt(1, orderItem_Id);

				ResultSet res = pstm.executeQuery();

				while (res.next()) {

					int orderItem_Id1 = res.getInt("orderItem_Id");
					int order_Id = res.getInt("order_Id");
					int quantity = res.getInt("quantity");
					double item_Total = res.getDouble("item_Total");
					int menu_Id = res.getInt("menu_Id");

					orderItem = new OrderItem(
							orderItem_Id1,
							order_Id,
							quantity,
							item_Total,
							menu_Id);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

			return orderItem;
		}

		@Override
		public void updateOrderItem(OrderItem orderItem) {

			Connection connection = DB_connection.getConnection();

			try {

				PreparedStatement pstm = connection.prepareStatement(Update_Query);

				pstm.setInt(1, orderItem.getOrder_Id());
				pstm.setInt(2, orderItem.getQuantity());
				pstm.setDouble(3, orderItem.getItem_Total());
				pstm.setInt(4, orderItem.getMenu_Id());
				pstm.setInt(5, orderItem.getOrderItem_Id());

				int i = pstm.executeUpdate();

				System.out.println("OrderItem updated successfully");
				System.out.println(i);

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public void deleteOrderItem(int orderItem_Id) {

			Connection connection = DB_connection.getConnection();

			try {

				PreparedStatement pstm = connection.prepareStatement(Delete_Query);

				pstm.setInt(1, orderItem_Id);

				int i = pstm.executeUpdate();

				System.out.println("OrderItem deleted successfully");
				System.out.println(i);

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		@Override
		public List<OrderItem> getAllOrderItem() {

			List<OrderItem> list = new ArrayList<>();

			Connection connection = DB_connection.getConnection();

			try {

				Statement stm = connection.createStatement();

				ResultSet res = stm.executeQuery(Get_All_OrderItem);

				while (res.next()) {

					int orderItem_Id = res.getInt("orderItem_Id");
					int order_Id = res.getInt("order_Id");
					int quantity = res.getInt("quantity");
					double item_Total = res.getDouble("item_Total");
					int menu_Id = res.getInt("menu_Id");

					OrderItem orderItem = new OrderItem(
							orderItem_Id,
							order_Id,
							quantity,
							item_Total,
							menu_Id);

					list.add(orderItem);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

			return list;
		}
	}
