package com.barracuda.barracudaweixin.garden.table_arrangement.controller;

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
import com.barracuda.barracudaweixin.garden.table_arrangement.domain.TableArrangement;
import com.barracuda.barracudaweixin.garden.table_arrangement.service.ITableArrangementService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 课程布置Controller
 * 
 * @author hm
 * @date 2024-09-06
 */
@Controller
@RequestMapping("/barracudaweixin/arrangement")
public class TableArrangementController extends BaseController
{
    private String prefix = "barracudaweixin/arrangement";

    @Autowired
    private ITableArrangementService tableArrangementService;

    @RequiresPermissions("barracudaweixin:arrangement:view")
    @GetMapping()
    public String arrangement()
    {
        return prefix + "/arrangement";
    }

    /**
     * 查询课程布置列表
     */
    @RequiresPermissions("barracudaweixin:arrangement:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TableArrangement tableArrangement)
    {
        startPage();
        List<TableArrangement> list = tableArrangementService.selectTableArrangementList(tableArrangement);
        return getDataTable(list);
    }

    /**
     * 导出课程布置列表
     */
    @RequiresPermissions("barracudaweixin:arrangement:export")
    @Log(title = "课程布置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TableArrangement tableArrangement)
    {
        List<TableArrangement> list = tableArrangementService.selectTableArrangementList(tableArrangement);
        ExcelUtil<TableArrangement> util = new ExcelUtil<TableArrangement>(TableArrangement.class);
        return util.exportExcel(list, "课程布置数据");
    }

    /**
     * 新增课程布置
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存课程布置
     */
    @RequiresPermissions("barracudaweixin:arrangement:add")
    @Log(title = "课程布置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TableArrangement tableArrangement)
    {
        return toAjax(tableArrangementService.insertTableArrangement(tableArrangement));
    }

    /**
     * 修改课程布置
     */
    @RequiresPermissions("barracudaweixin:arrangement:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        TableArrangement tableArrangement = tableArrangementService.selectTableArrangementById(id);
        mmap.put("tableArrangement", tableArrangement);
        return prefix + "/edit";
    }

    /**
     * 修改保存课程布置
     */
    @RequiresPermissions("barracudaweixin:arrangement:edit")
    @Log(title = "课程布置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TableArrangement tableArrangement)
    {
        return toAjax(tableArrangementService.updateTableArrangement(tableArrangement));
    }

    /**
     * 删除课程布置
     */
    @RequiresPermissions("barracudaweixin:arrangement:remove")
    @Log(title = "课程布置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tableArrangementService.deleteTableArrangementByIds(ids));
    }
}
