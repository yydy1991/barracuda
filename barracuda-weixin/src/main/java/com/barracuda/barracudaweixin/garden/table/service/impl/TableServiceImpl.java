package com.barracuda.barracudaweixin.garden.table.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.barracuda.barracudaweixin.garden.table.domain.Table;
import com.barracuda.barracudaweixin.garden.table.mapper.TableMapper;
import com.barracuda.barracudaweixin.garden.table.service.ITableService;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.core.text.Convert;
import org.springframework.util.Assert;

import javax.annotation.Resource;

/**
 * 课程Service业务层处理
 *
 * @author hm
 * @date 2024-09-06
 */
@Service
public class TableServiceImpl implements ITableService {
    @Resource
    private TableMapper tableMapper;

    @Resource
    private ISysUserService sysUserService;

    /**
     * 查询课程
     *
     * @param id 课程主键
     * @return 课程
     */
    @Override
    public Table selectTableById(Long id) {
        return tableMapper.selectTableById(id);
    }

    /**
     * 查询课程列表
     *
     * @param table 课程
     * @return 课程
     */
    @Override
    public List<Table> selectTableList(Table table) {
        return tableMapper.selectTableList(table);
    }

    /**
     * 新增课程
     *
     * @param table 课程
     * @return 结果
     */
    @Override
    public int insertTable(Table table) {
        table.setCreateTime(DateUtils.getNowDate());
        return tableMapper.insertTable(table);
    }

    /**
     * 修改课程
     *
     * @param table 课程
     * @return 结果
     */
    @Override
    public int updateTable(Table table) {
        table.setUpdateTime(DateUtils.getNowDate());
        return tableMapper.updateTable(table);
    }

    /**
     * 批量删除课程
     *
     * @param ids 需要删除的课程主键
     * @return 结果
     */
    @Override
    public int deleteTableByIds(String ids) {
        return tableMapper.deleteTableByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除课程信息
     *
     * @param id 课程主键
     * @return 结果
     */
    @Override
    public int deleteTableById(Long id) {
        return tableMapper.deleteTableById(id);
    }

    @Override
    public List<Table> listTable(String loginName) {
        List<Table> result = new ArrayList<>();
        Assert.notNull(loginName, "loginName cannot be null");
        Table table = new Table();
        table.setDelFlag(0L);
        table.setCreateBy(loginName);
        List<Table> tables = selectTableList(table);
        if (tables != null) {
            result = tables;
        }
        return result;
    }

    @Override
    public List<Table> listTable(Long userId) {
        Assert.notNull(userId, "userId cannot be null");
        return listTable(String.valueOf(userId));
    }
}
