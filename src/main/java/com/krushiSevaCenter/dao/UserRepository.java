package com.krushiSevaCenter.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.krushiSevaCenter.entity.User;


public interface UserRepository extends JpaRepository<User, Integer> {

	public User findByEmail(String email);

	/*public User findByResetToken(String token);*/
	 
}
