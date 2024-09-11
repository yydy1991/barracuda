package com.barracuda.barracudaweixin.garden.subject.controller;

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
import com.barracuda.barracudaweixin.garden.subject.domain.Subject;
import com.barracuda.barracudaweixin.garden.subject.service.ISubjectService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学科Controller
 *
 * @author hm
 * @date 2024-09-06
 */
@Controller
@RequestMapping("/barracudaweixin/subject")
public class SubjectController extends BaseController {
    private String prefix = "barracudaweixin/subject";

    @Autowired
    private ISubjectService subjectService;

    @RequiresPermissions("barracudaweixin:subject:view")
    @GetMapping()
    public String subject() {
        return prefix + "/subject";
    }

    /**
     * 查询学科列表
     */
    @RequiresPermissions("barracudaweixin:subject:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Subject subject) {
        startPage();
        List<Subject> list = subjectService.selectSubjectList(subject);
        return getDataTable(list);
    }

    /**
     * 导出学科列表
     */
    @RequiresPermissions("barracudaweixin:subject:export")
    @Log(title = "学科", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Subject subject) {
        List<Subject> list = subjectService.selectSubjectList(subject);
        ExcelUtil<Subject> util = new ExcelUtil<Subject>(Subject.class);
        return util.exportExcel(list, "学科数据");
    }

    /**
     * 新增学科
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存学科
     */
    @RequiresPermissions("barracudaweixin:subject:add")
    @Log(title = "学科", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Subject subject) {
        return toAjax(subjectService.insertSubject(subject));
    }

    /**
     * 修改学科
     */
    @RequiresPermissions("barracudaweixin:subject:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        Subject subject = subjectService.selectSubjectById(id);
        mmap.put("subject", subject);
        return prefix + "/edit";
    }

    /**
     * 修改保存学科
     */
    @RequiresPermissions("barracudaweixin:subject:edit")
    @Log(title = "学科", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Subject subject) {
        return toAjax(subjectService.updateSubject(subject));
    }

    /**
     * 删除学科
     */
    @RequiresPermissions("barracudaweixin:subject:remove")
    @Log(title = "学科", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(subjectService.deleteSubjectByIds(ids));
    }
}
