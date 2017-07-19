package ry.dao;

import java.math.BigDecimal;

import ry.annotation.MybatisDateBaseOracleTwo;
import ry.model.SysPermItem;
@MybatisDateBaseOracleTwo
public interface SysPermItemMapper {
    int deleteByPrimaryKey(BigDecimal id);

    int insert(SysPermItem record);

    int insertSelective(SysPermItem record);

    SysPermItem selectByPrimaryKey(BigDecimal id);

    int updateByPrimaryKeySelective(SysPermItem record);

    int updateByPrimaryKey(SysPermItem record);
}