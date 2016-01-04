package ry.dao;

import ry.model.UserRole;

public interface UserRoleMapper {
    int insert(UserRole userRole);

    int insertSelective(UserRole record);
}