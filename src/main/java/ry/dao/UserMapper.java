package ry.dao;

import java.util.List;
import java.util.Map;

import ry.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	List<User> getAll(Map<String, Object> map);

	List<User> getAll2();

	List<User> selectByParameter(Map<String, Object> map);

	Integer getAllCount();
}