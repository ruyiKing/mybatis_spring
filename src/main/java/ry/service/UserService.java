package ry.service;

import java.util.List;

import ry.model.User;

public interface UserService {
	
	User findUserById(Long id);
	
	public Long getuserid(Long id);
	
	List<User> getAll() ;

	List<User> getAll2();

	List<User> findUserByName(String userName);

	int addUsers(User user);
}
