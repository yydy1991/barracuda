package com.barracuda.barracudaweixin.user.controller;

import com.barracuda.barracudaweixin.user.domain.WxUser;
import com.barracuda.barracudaweixin.user.service.IWxUserService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 微信用户Controller
 *
 * @author hm
 * @date 2024-08-27
 */
@Controller
@RequestMapping("/barracudaweixin/user")
public class WxUserController extends BaseController {
    private String prefix = "barracudaweixin/user";

    @Resource
    private IWxUserService wxUserService;

    @RequiresPermissions("barracudaweixin:user:view")
    @GetMapping()
    public String user() {
        return prefix + "/user";
    }

    /**
     * 查询微信用户列表
     */
    @RequiresPermissions("barracudaweixin:user:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WxUser wxUser) {
        startPage();
        List<WxUser> list = wxUserService.selectWxUserList(wxUser);
        return getDataTable(list);
    }

    /**
     * 导出微信用户列表
     */
    @RequiresPermissions("barracudaweixin:user:export")
    @Log(title = "微信用户", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(WxUser wxUser) {
        List<WxUser> list = wxUserService.selectWxUserList(wxUser);
        ExcelUtil<WxUser> util = new ExcelUtil<WxUser>(WxUser.class);
        return util.exportExcel(list, "微信用户数据");
    }

    /**
     * 新增微信用户
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存微信用户
     */
    @RequiresPermissions("barracudaweixin:user:add")
    @Log(title = "微信用户", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(WxUser wxUser) {
        return toAjax(wxUserService.insertWxUser(wxUser));
    }

    /**
     * 修改微信用户
     */
    @RequiresPermissions("barracudaweixin:user:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap) {
        WxUser wxUser = wxUserService.selectWxUserById(id);
        mmap.put("wxUser", wxUser);
        return prefix + "/edit";
    }

    /**
     * 修改保存微信用户
     */
    @RequiresPermissions("barracudaweixin:user:edit")
    @Log(title = "微信用户", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(WxUser wxUser) {
        return toAjax(wxUserService.updateWxUser(wxUser));
    }

    /**
     * 删除微信用户
     */
    @RequiresPermissions("barracudaweixin:user:remove")
    @Log(title = "微信用户", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(wxUserService.deleteWxUserByIds(ids));
    }
}
