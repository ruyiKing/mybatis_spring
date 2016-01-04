package ry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import UserRole.UserRoleService;
import ry.dao.UserRoleMapper;
import ry.model.UserRole;

@Service
public class UserRoleServiceImpl implements UserRoleService {
	
	@Autowired
	private UserRoleMapper userRoleMapper;

	@Override
	public void addUserRole(UserRole userRole) {
		userRoleMapper.insert(userRole);

	}

}
