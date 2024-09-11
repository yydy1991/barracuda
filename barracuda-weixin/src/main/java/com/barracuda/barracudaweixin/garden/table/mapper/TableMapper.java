package com.barracuda.barracudaweixin.garden.table.mapper;

import java.util.List;

import com.barracuda.barracudaweixin.garden.table.domain.Table;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 课程Mapper接口
 *
 * @author hm
 * @date 2024-09-06
 */
@Mapper
public interface TableMapper {
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
     * 删除课程
     *
     * @param id 课程主键
     * @return 结果
     */
    public int deleteTableById(Long id);

    /**
     * 批量删除课程
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTableByIds(String[] ids);
}
