package ry.service;

import java.util.List;
import java.util.Map;

import ry.model.User;

public interface UserService {
	
	User findUserById(Long id);
	
	public Long getuserid(Long id);
	
	List<User> getAll(Map<String, Object> map) ;

	List<User> getAll2();

	List<User> findUserByName(Map<String, Object> map);

	int addUsers(User user);

	Integer getAllCount();
}
