package com.barracuda.barracudaweixin.garden.table_arrangement.service;

import com.barracuda.barracudaweixin.garden.table_arrangement.domain.TableArrangement;

import java.util.List;

/**
 * 课程布置Service接口
 *
 * @author hm
 * @date 2024-09-06
 */
public interface ITableArrangementService {
    /**
     * 查询课程布置
     *
     * @param id 课程布置主键
     * @return 课程布置
     */
    public TableArrangement selectTableArrangementById(String id);

    /**
     * 查询课程布置列表
     *
     * @param tableArrangement 课程布置
     * @return 课程布置集合
     */
    public List<TableArrangement> selectTableArrangementList(TableArrangement tableArrangement);

    /**
     * 新增课程布置
     *
     * @param tableArrangement 课程布置
     * @return 结果
     */
    public int insertTableArrangement(TableArrangement tableArrangement);

    /**
     * 修改课程布置
     *
     * @param tableArrangement 课程布置
     * @return 结果
     */
    public int updateTableArrangement(TableArrangement tableArrangement);

    /**
     * 批量删除课程布置
     *
     * @param ids 需要删除的课程布置主键集合
     * @return 结果
     */
    public int deleteTableArrangementByIds(String ids);

    /**
     * 删除课程布置信息
     *
     * @param id 课程布置主键
     * @return 结果
     */
    public int deleteTableArrangementById(String id);

    /**
     * 查询特定课程的课程布置列表
     *
     * @param tableId 课程的主键
     * @return 符合条件的课程布置列表
     */
    List<TableArrangement> listTableArrangement(Long tableId);
}
