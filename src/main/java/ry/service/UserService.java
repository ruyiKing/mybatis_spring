package ry.service;

import ry.model.User;

public interface UserService {
	User findUserById(String id);
	public String getuserid(String id);
}
