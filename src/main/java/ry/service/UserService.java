package ry.service;

import com.sun.tools.javac.util.List;

import ry.model.User;

public interface UserService {
	
	User findUserById(String id);
	
	public String getuserid(String id);
	
	List<User> getAll() ;
}
