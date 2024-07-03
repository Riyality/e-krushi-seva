package com.krushiSevaCenter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.UserRepository;
import com.krushiSevaCenter.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository; 
	
	   public User authenticate(String email, String password) {
	        // Find user by email
	        User user = userRepository.findByEmail(email);

	        // Check if user exists and password matches
	        if (user != null && user.getPassword().equals(password)) {
	            return user;
	        }

	        return null; // Authentication failed
	    }

	   public User findByEmail(String email) {
	        return userRepository.findByEmail(email);
	    }

	    public void saveOrUpdate(User user) {
	        userRepository.save(user);
	    }
	 /*  public User findByResetToken(String token) {
	        return userRepository.findByResetToken(token);
	    }

	   public void updatePassword(User user, String newPassword) {
	        user.setPassword(newPassword);
	        userRepository.save(user);
	    }


	   public void clearResetToken(User user) {
	        user.setResetToken(null);
	        userRepository.save(user);
	    }*/
}
