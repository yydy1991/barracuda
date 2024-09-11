package com.barracuda.barracudaweixin.garden.period.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.barracuda.barracudaweixin.garden.period.mapper.PeriodMapper;
import com.barracuda.barracudaweixin.garden.period.domain.Period;
import com.barracuda.barracudaweixin.garden.period.service.IPeriodService;
import com.ruoyi.common.core.text.Convert;

/**
 * 课节Service业务层处理
 * 
 * @author hm
 * @date 2024-09-06
 */
@Service
public class PeriodServiceImpl implements IPeriodService 
{
    @Autowired
    private PeriodMapper periodMapper;

    /**
     * 查询课节
     * 
     * @param id 课节主键
     * @return 课节
     */
    @Override
    public Period selectPeriodById(Long id)
    {
        return periodMapper.selectPeriodById(id);
    }

    /**
     * 查询课节列表
     * 
     * @param period 课节
     * @return 课节
     */
    @Override
    public List<Period> selectPeriodList(Period period)
    {
        return periodMapper.selectPeriodList(period);
    }

    /**
     * 新增课节
     * 
     * @param period 课节
     * @return 结果
     */
    @Override
    public int insertPeriod(Period period)
    {
        period.setCreateTime(DateUtils.getNowDate());
        return periodMapper.insertPeriod(period);
    }

    /**
     * 修改课节
     * 
     * @param period 课节
     * @return 结果
     */
    @Override
    public int updatePeriod(Period period)
    {
        period.setUpdateTime(DateUtils.getNowDate());
        return periodMapper.updatePeriod(period);
    }

    /**
     * 批量删除课节
     * 
     * @param ids 需要删除的课节主键
     * @return 结果
     */
    @Override
    public int deletePeriodByIds(String ids)
    {
        return periodMapper.deletePeriodByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除课节信息
     * 
     * @param id 课节主键
     * @return 结果
     */
    @Override
    public int deletePeriodById(Long id)
    {
        return periodMapper.deletePeriodById(id);
    }
}
