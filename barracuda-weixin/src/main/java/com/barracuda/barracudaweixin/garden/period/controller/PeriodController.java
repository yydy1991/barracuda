package com.barracuda.barracudaweixin.garden.period.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.barracuda.barracudaweixin.garden.period.domain.Period;
import com.barracuda.barracudaweixin.garden.period.service.IPeriodService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 课节Controller
 * 
 * @author hm
 * @date 2024-09-06
 */
@Controller
@RequestMapping("/barracudaweixin/period")
public class PeriodController extends BaseController
{
    private String prefix = "barracudaweixin/period";

    @Autowired
    private IPeriodService periodService;

    @RequiresPermissions("barracudaweixin:period:view")
    @GetMapping()
    public String period()
    {
        return prefix + "/period";
    }

    /**
     * 查询课节列表
     */
    @RequiresPermissions("barracudaweixin:period:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Period period)
    {
        startPage();
        List<Period> list = periodService.selectPeriodList(period);
        return getDataTable(list);
    }

    /**
     * 导出课节列表
     */
    @RequiresPermissions("barracudaweixin:period:export")
    @Log(title = "课节", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Period period)
    {
        List<Period> list = periodService.selectPeriodList(period);
        ExcelUtil<Period> util = new ExcelUtil<Period>(Period.class);
        return util.exportExcel(list, "课节数据");
    }

    /**
     * 新增课节
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存课节
     */
    @RequiresPermissions("barracudaweixin:period:add")
    @Log(title = "课节", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Period period)
    {
        return toAjax(periodService.insertPeriod(period));
    }

    /**
     * 修改课节
     */
    @RequiresPermissions("barracudaweixin:period:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Period period = periodService.selectPeriodById(id);
        mmap.put("period", period);
        return prefix + "/edit";
    }

    /**
     * 修改保存课节
     */
    @RequiresPermissions("barracudaweixin:period:edit")
    @Log(title = "课节", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Period period)
    {
        return toAjax(periodService.updatePeriod(period));
    }

    /**
     * 删除课节
     */
    @RequiresPermissions("barracudaweixin:period:remove")
    @Log(title = "课节", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(periodService.deletePeriodByIds(ids));
    }
}
