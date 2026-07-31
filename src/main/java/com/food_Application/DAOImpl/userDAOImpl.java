package com.food_Application.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import com.food_Application.DAO.UserDAO;
import com.food_Application.model.User;
import com.food_Application.util.DB_connection;

public class userDAOImpl implements UserDAO{
	private static final String Insert_Query="insert into users (user_Name,email,password,address,role,created_Date,last_Login_Date)"
			+ "values(?,?,?,?,?,?,?)";
	private static final String Select_Query="select * from users"
			+ " where user_Id= ?";
	private static final String Update_Query =  "UPDATE users SET user_Name=?, email=?, password=?, address=? ,role=? WHERE user_id=?";
	private static final String Delete_Query =  "delete from users where user_id=?";
	private static final String Get_All_User="select * from users";
	private static final String Get_User_BY_userEmail="select * from users where email=?";

	@Override
	public int addUser(User user) {

		Connection connection=DB_connection.getConnection();
		int i=0;
	  try {
		PreparedStatement pstm= connection.prepareStatement(Insert_Query);
		pstm.setString(1,user.getUser_Name());
		pstm.setString(2, user.getEmail());
		pstm.setString(3, user.getPassword());
		pstm.setString(4, user.getAddress());
		pstm.setString(5, user.getRole());
		pstm.setTimestamp(6,new Timestamp(System.currentTimeMillis()));
		pstm.setTimestamp(7,new Timestamp(System.currentTimeMillis()));
		

		 i=pstm.executeUpdate();
		System.out.println("User data store succesfully");
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return i;
	}

	@Override

	public User getUser(int user_Id) {
		Connection connection=DB_connection.getConnection();
		User user=null;
		
		  try {
			PreparedStatement pstm= connection.prepareStatement(Select_Query);
			pstm.setInt(1,user_Id);
			ResultSet res=pstm.executeQuery();
			while(res.next()) {
				int user_Id1=res.getInt("user_Id");		
				String user_Name=res.getString("user_Name");
				String email=res.getString("email");
				String password=res.getString("password");
				String address=res.getString("address");
				String role=res.getString("role");
				Timestamp create_Date=res.getTimestamp("created_Date");
				Timestamp last_Login_Date=res.getTimestamp("last_Login_Date");	
				
			user=new User(user_Id1,user_Name,email,password,address,role,create_Date,last_Login_Date);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user ;
	}

	@Override
	public void updateUser(User user) {
		
		Connection connection=DB_connection.getConnection();
		
		  try {
			PreparedStatement pstm= connection.prepareStatement(Update_Query);
			pstm.setString(1,user.getUser_Name());
			pstm.setString(2, user.getEmail());
			pstm.setString(3, user.getPassword());
			pstm.setString(4, user.getAddress());
			pstm.setString(5, user.getRole());
			pstm.setInt(6, user.getUser_Id());
			
			int i=pstm.executeUpdate();
			System.out.println("Update user sucessfully");
			System.out.println(i);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteUser(int user_Id) {
		Connection connection=DB_connection.getConnection();
		 try {
				PreparedStatement pstm= connection.prepareStatement(Delete_Query);
				pstm.setInt(1,user_Id);
				int i=pstm.executeUpdate();
				System.out.print("User delete sucessfully");
				}
		 catch (SQLException e) {
				e.printStackTrace();
			}
	}

	@Override
	public List<User> getAllUser() {
		List list=new ArrayList<>();	
		User user=null;
		Connection connection=DB_connection.getConnection();
		
		try {
			Statement stm=connection.createStatement();
			ResultSet res=stm.executeQuery(Get_All_User);
			
			while(res.next()) {
				int user_Id=res.getInt("user_Id");		
				String user_Name=res.getString("user_Name");
				String email=res.getString("email");
				String password=res.getString("password");
				String address=res.getString("address");
				String role=res.getString("role");
				Timestamp create_Date=res.getTimestamp("created_Date");
				Timestamp last_Login_Date=res.getTimestamp("last_Login_Date");	
			user=new User(user_Id,user_Name,email,password,address,role,create_Date,last_Login_Date);
			list.add(user);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	@Override
	public User getUserByUserEmail(String email) {
		Connection connection=DB_connection.getConnection();
		User user=null;
		
		  try {
			PreparedStatement pstm= connection.prepareStatement(Get_User_BY_userEmail);
			pstm.setString(1,email);
			 ResultSet res = pstm.executeQuery();

		        if(res.next()) {

		          user=new User();
		        	user.setUser_Id(res.getInt("user_Id"));	
		        	user.setUser_Name(res.getString("user_Name"));	
		        	user.setEmail(res.getString("email"));	
		        	user.setPassword(res.getString("password"));	
		        	user.setAddress(res.getString("address"));
		        	user.setRole(res.getString("role"));
		            
		        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	
	

}
