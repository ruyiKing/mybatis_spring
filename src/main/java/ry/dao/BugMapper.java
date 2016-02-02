package ry.dao;

import ry.model.Bug;

public interface BugMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Bug record);

    int insertSelective(Bug record);

    Bug selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Bug record);

    int updateByPrimaryKeyWithBLOBs(Bug record);

    int updateByPrimaryKey(Bug record);
}