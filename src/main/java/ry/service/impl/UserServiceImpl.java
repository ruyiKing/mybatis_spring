package ry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ry.dao.UserMapper;
import ry.model.User;
import ry.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User findUserById(String id) {
		//return null;
		return userMapper.selectByPrimaryKey(id);
	}
	
	public String getuserid(String id){
		System.out.println(id);
		return id;
	}




}