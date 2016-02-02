package ry.dao;

import ry.model.Online;

public interface OnlineMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Online record);

    int insertSelective(Online record);

    Online selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Online record);

    int updateByPrimaryKey(Online record);
}