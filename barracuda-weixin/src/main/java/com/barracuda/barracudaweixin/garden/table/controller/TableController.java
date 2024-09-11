package com.barracuda.barracudaweixin.garden.table.controller;

import java.util.List;

import com.barracuda.barracudaweixin.garden.table.domain.Table;
import com.barracuda.barracudaweixin.garden.table.service.ITableService;
import com.barracuda.barracudaweixin.garden.table_total_info.TableTotalInfoService;
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
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

import javax.annotation.Resource;

/**
 * 课程Controller
 *
 * @author hm
 * @date 2024-09-06
 */
@Controller
@RequestMapping("/barracudaweixin/table")
public class TableController extends BaseController {
    private String prefix = "barracudaweixin/garden/table";

    @Resource
    private ITableService tableService;

    @Resource
    private TableTotalInfoService tableTotalInfoService;

    @RequiresPermissions("barracudaweixin:table:view")
    @GetMapping()
    public String table() {
        return prefix + "/table";
    }

    /**
     * 查询课程列表
     */
    @RequiresPermissions("barracudaweixin:table:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Table table) {
        startPage();
        List<Table> list = tableService.selectTableList(table);
        return getDataTable(list);
    }

    /**
     * 导出课程列表
     */
    @RequiresPermissions("barracudaweixin:table:export")
    @Log(title = "课程", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Table table) {
        List<Table> list = tableService.selectTableList(table);
        ExcelUtil<Table> util = new ExcelUtil<Table>(Table.class);
        return util.exportExcel(list, "课程数据");
    }

    /**
     * 新增课程
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存课程
     */
    @RequiresPermissions("barracudaweixin:table:add")
    @Log(title = "课程", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Table table) {
        return toAjax(tableService.insertTable(table));
    }

    /**
     * 修改课程
     */
    @RequiresPermissions("barracudaweixin:table:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        Table table = tableService.selectTableById(id);
        mmap.put("table", table);
        return prefix + "/edit";
    }

    /**
     * 修改保存课程
     */
    @RequiresPermissions("barracudaweixin:table:edit")
    @Log(title = "课程", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Table table) {
        return toAjax(tableService.updateTable(table));
    }

    /**
     * 删除课程
     */
    @RequiresPermissions("barracudaweixin:table:remove")
    @Log(title = "课程", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tableService.deleteTableByIds(ids));
    }


    @GetMapping("/tables")
    @ResponseBody
    public AjaxResult tables(Long userId) {
        List<Table> tables = tableService.listTable(userId);
        return AjaxResult.success(tables);
    }

    @GetMapping("/tableInfo")
    @ResponseBody
    public AjaxResult tableInfo(Long tableId) {
        return AjaxResult.success(tableTotalInfoService.getTableTotalInfo(tableId));
    }
}
