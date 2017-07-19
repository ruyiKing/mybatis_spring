package ry.service;

import ry.model.SysPermItem;

import java.math.BigDecimal;

/**
 * Created by fate on 2016/7/5.
 */
public interface SysPermItemService {

    SysPermItem findModelById(BigDecimal id);
}
