package ry.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ry.dao.UserMapper;
import ry.model.User;
import ry.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
//	@Resource
//	private UserMapper userMapper;
	
	@Override
	public User findUserById(String id) {
		return null;
		//return userMapper.selectByPrimaryKey(id);
	}
	
	public String getuserid(String id){
		System.out.println(id);
		return id;
	}




}
