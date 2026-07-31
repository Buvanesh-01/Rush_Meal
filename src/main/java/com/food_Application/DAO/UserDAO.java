package com.food_Application.DAO;
import java.util.List;
import com.food_Application.model.User;

public interface UserDAO {
		
		int addUser(User user);
		User getUser(int user_Id);
		void updateUser(User user);
		void deleteUser(int user_Id);
		List<User> getAllUser();
		User getUserByUserEmail(String email);
}
