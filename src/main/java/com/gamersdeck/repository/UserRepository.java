package com.gamersdeck.repository;

import org.springframework.data.repository.CrudRepository;

import com.gamersdeck.beans.User;

public interface UserRepository extends CrudRepository<User, String>{
	public User findUserByUsername(String string);
//	public void createUser(User user);
}
