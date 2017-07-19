package ry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ry.dao.SysPermItemMapper;
import ry.model.SysPermItem;
import ry.service.SysPermItemService;

import java.math.BigDecimal;

/**
 * Created by fate on 2016/7/5.
 */
@Service
public class SysPermItemServiceImpl implements SysPermItemService {
    @Autowired
    private SysPermItemMapper sysPermItemMapper;

    @Override
    public SysPermItem findModelById(BigDecimal id){
            return sysPermItemMapper.selectByPrimaryKey(id);
    }
}
