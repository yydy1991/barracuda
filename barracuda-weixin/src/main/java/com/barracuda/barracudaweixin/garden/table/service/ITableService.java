package com.barracuda.barracudaweixin.garden.table.service;

import java.util.List;

import com.barracuda.barracudaweixin.garden.table.domain.Table;

/**
 * 课程Service接口
 *
 * @author hm
 * @date 2024-09-06
 */
public interface ITableService {
    /**
     * 查询课程
     *
     * @param id 课程主键
     * @return 课程
     */
    public Table selectTableById(Long id);

    /**
     * 查询课程列表
     *
     * @param table 课程
     * @return 课程集合
     */
    public List<Table> selectTableList(Table table);

    /**
     * 新增课程
     *
     * @param table 课程
     * @return 结果
     */
    public int insertTable(Table table);

    /**
     * 修改课程
     *
     * @param table 课程
     * @return 结果
     */
    public int updateTable(Table table);

    /**
     * 批量删除课程
     *
     * @param ids 需要删除的课程主键集合
     * @return 结果
     */
    public int deleteTableByIds(String ids);

    /**
     * 删除课程信息
     *
     * @param id 课程主键
     * @return 结果
     */
    public int deleteTableById(Long id);

    /**
     * 查询特定创建者的课程列表
     *
     * @param loginName 创建者的登录名
     * @return 符合条件的课程列表
     */
    List<Table> listTable(String loginName);

    List<Table> listTable(Long userId);
}
