package com.barracuda.barracudaweixin.garden.period.mapper;

import java.util.List;

import com.barracuda.barracudaweixin.garden.period.domain.Period;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 课节Mapper接口
 *
 * @author hm
 * @date 2024-09-06
 */
@Mapper
public interface PeriodMapper {
    /**
     * 查询课节
     *
     * @param id 课节主键
     * @return 课节
     */
    public Period selectPeriodById(Long id);

    /**
     * 查询课节列表
     *
     * @param period 课节
     * @return 课节集合
     */
    public List<Period> selectPeriodList(Period period);

    /**
     * 新增课节
     *
     * @param period 课节
     * @return 结果
     */
    public int insertPeriod(Period period);

    /**
     * 修改课节
     *
     * @param period 课节
     * @return 结果
     */
    public int updatePeriod(Period period);

    /**
     * 删除课节
     *
     * @param id 课节主键
     * @return 结果
     */
    public int deletePeriodById(Long id);

    /**
     * 批量删除课节
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePeriodByIds(String[] ids);
}
