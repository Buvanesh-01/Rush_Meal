package com.food_Application.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.food_Application.DAO.OrderDAO;
import com.food_Application.model.Order;
import com.food_Application.util.DB_connection;

public class orderDAOImpl implements OrderDAO{

	private static final String Insert_Query = "insert into OrderTable (user_Id,order_Date,total_Amount,status,payment_Method,restaurant_Id)"
			+ " values(?,?,?,?,?,?)";

	private static final String Select_Query = "select * from OrderTable where order_Id=?";

	private static final String Update_Query = "update OrderTable set user_Id=?, total_Amount=?, status=?, payment_Method=?, restaurant_Id=? where order_Id=?";

	private static final String Delete_Query = "delete from OrderTable where order_Id=?";

	private static final String Get_All_Order = "select * from OrderTable";

	private static final String Get_All_UserByUserId =
		    "SELECT * FROM OrderTable WHERE user_Id = ? ORDER BY order_Date DESC";

	@Override
	public int addOrder(Order order) {

		Connection connection = DB_connection.getConnection();

		int order_Id=0;
		try {

			PreparedStatement pstm = connection.prepareStatement(Insert_Query,Statement.RETURN_GENERATED_KEYS);

			pstm.setInt(1, order.getUser_Id());
			pstm.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
			pstm.setDouble(3, order.getTotal_Amount());
			pstm.setString(4, order.getStatus());
			pstm.setString(5, order.getPayment_Method());
			pstm.setInt(6, order.getRestaurant_Id());

			pstm.executeUpdate();
			ResultSet res = pstm.getGeneratedKeys();
			if(res.next()) {
				order_Id = res.getInt(1);
			}

			System.out.println("Order data stored successfully");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return order_Id;
	}

	@Override
	public Order getOrder(int order_Id) {

		Connection connection = DB_connection.getConnection();
		Order order = null;

		try {

			PreparedStatement pstm = connection.prepareStatement(Select_Query);
			pstm.setInt(1, order_Id);

			ResultSet res = pstm.executeQuery();

			while (res.next()) {

				int order_Id1 = res.getInt("order_Id");
				int user_Id = res.getInt("user_Id");
				Timestamp order_Date = res.getTimestamp("order_Date");
				double total_Amount = res.getDouble("total_Amount");
				String status = res.getString("status");
				String payment_Method = res.getString("payment_Method");
				int restaurant_Id = res.getInt("restaurant_Id");

				order = new Order(order_Id1, user_Id, order_Date,total_Amount, status, payment_Method, restaurant_Id);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return order;
	}

	@Override
	public void updateOrder(Order order) {

		Connection connection = DB_connection.getConnection();

		try {

			PreparedStatement pstm = connection.prepareStatement(Update_Query);

			pstm.setInt(1, order.getUser_Id());
			pstm.setDouble(2, order.getTotal_Amount());
			pstm.setString(3, order.getStatus());
			pstm.setString(4, order.getPayment_Method());
			pstm.setInt(5, order.getRestaurant_Id());
			pstm.setInt(6, order.getOrder_Id());

			int i = pstm.executeUpdate();

			System.out.println("Order updated successfully");
			System.out.println(i);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOrder(int order_Id) {

		Connection connection = DB_connection.getConnection();

		try {

			PreparedStatement pstm = connection.prepareStatement(Delete_Query);

			pstm.setInt(1, order_Id);

			int i = pstm.executeUpdate();

			System.out.println("Order deleted successfully");
			System.out.println(i);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Order> getAllOrder() {

		List<Order> list = new ArrayList<>();
		Order order = null;

		Connection connection = DB_connection.getConnection();

		try {

			Statement stm = connection.createStatement();

			ResultSet res = stm.executeQuery(Get_All_Order);

			while (res.next()) {

				int order_Id = res.getInt("order_Id");
				int user_Id = res.getInt("user_Id");
				Timestamp order_Date = res.getTimestamp("order_Date");
				double total_Amount = res.getDouble("total_Amount");
				String status = res.getString("status");
				String payment_Method = res.getString("payment_Method");
				int restaurant_Id = res.getInt("restaurant_Id");

				order = new Order(order_Id,user_Id,order_Date,total_Amount,status,payment_Method,restaurant_Id);

				list.add(order);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Order> getAllOrdersByUesr(int user_Id) {

		List<Order> orderList = new ArrayList<>();

		Connection connection = DB_connection.getConnection();



		try {
			PreparedStatement pstm = connection.prepareStatement(Get_All_UserByUserId);
			pstm.setInt(1, user_Id);

			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {

				Order order = new Order();

				order.setOrder_Id(rs.getInt("order_Id"));
				order.setUser_Id(rs.getInt("user_Id"));
				order.setOrder_Date(rs.getTimestamp("order_Date"));
				order.setTotal_Amount(rs.getDouble("total_Amount"));
				order.setStatus(rs.getString("status"));
				 order.setPayment_Method(rs.getString("payment_Method"));
				order.setRestaurant_Id(rs.getInt("restaurant_Id"));

				orderList.add(order);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return orderList;
	}

	@Override
	public double TotalRevenue() {

		double totalRevenue = 0;
		Connection connection = DB_connection.getConnection();

	    String query = "SELECT SUM(total_Amount) AS total_Amount FROM OrderTable";

	    try {

	        PreparedStatement pstmt = connection.prepareStatement(query);

	        ResultSet res = pstmt.executeQuery();

	        if (res.next()) {
	        	
	            totalRevenue = res.getDouble("total_Amount");
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalRevenue;
		
	}
}
