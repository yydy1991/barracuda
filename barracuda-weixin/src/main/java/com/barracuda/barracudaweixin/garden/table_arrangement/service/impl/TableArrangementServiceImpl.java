package com.barracuda.barracudaweixin.garden.table_arrangement.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.barracuda.barracudaweixin.garden.table_arrangement.mapper.TableArrangementMapper;
import com.barracuda.barracudaweixin.garden.table_arrangement.domain.TableArrangement;
import com.barracuda.barracudaweixin.garden.table_arrangement.service.ITableArrangementService;
import com.ruoyi.common.core.text.Convert;

/**
 * 课程布置Service业务层处理
 *
 * @author hm
 * @date 2024-09-06
 */
@Service
public class TableArrangementServiceImpl implements ITableArrangementService {
    @Autowired
    private TableArrangementMapper tableArrangementMapper;

    /**
     * 查询课程布置
     *
     * @param id 课程布置主键
     * @return 课程布置
     */
    @Override
    public TableArrangement selectTableArrangementById(String id) {
        return tableArrangementMapper.selectTableArrangementById(id);
    }

    /**
     * 查询课程布置列表
     *
     * @param tableArrangement 课程布置
     * @return 课程布置
     */
    @Override
    public List<TableArrangement> selectTableArrangementList(TableArrangement tableArrangement) {
        return tableArrangementMapper.selectTableArrangementList(tableArrangement);
    }

    /**
     * 新增课程布置
     *
     * @param tableArrangement 课程布置
     * @return 结果
     */
    @Override
    public int insertTableArrangement(TableArrangement tableArrangement) {
        return tableArrangementMapper.insertTableArrangement(tableArrangement);
    }

    /**
     * 修改课程布置
     *
     * @param tableArrangement 课程布置
     * @return 结果
     */
    @Override
    public int updateTableArrangement(TableArrangement tableArrangement) {
        return tableArrangementMapper.updateTableArrangement(tableArrangement);
    }

    /**
     * 批量删除课程布置
     *
     * @param ids 需要删除的课程布置主键
     * @return 结果
     */
    @Override
    public int deleteTableArrangementByIds(String ids) {
        return tableArrangementMapper.deleteTableArrangementByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除课程布置信息
     *
     * @param id 课程布置主键
     * @return 结果
     */
    @Override
    public int deleteTableArrangementById(String id) {
        return tableArrangementMapper.deleteTableArrangementById(id);
    }

    @Override
    public List<TableArrangement> listTableArrangement(Long tableId) {
        List<TableArrangement> result = new ArrayList<>();
        TableArrangement tableArrangement = new TableArrangement();
        tableArrangement.setTableId(tableId);
        List<TableArrangement> tableArrangements = selectTableArrangementList(tableArrangement);
        if (tableArrangements != null){
            result = tableArrangements;
        }
        return result;
    }
}
