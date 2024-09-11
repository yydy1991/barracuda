package com.barracuda.barracudaweixin.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.barracuda.barracudaweixin.service.LoginService;
import com.barracuda.barracudaweixin.service.WeiXinService;
import com.barracuda.barracudaweixin.user.domain.WxUser;
import com.barracuda.barracudaweixin.user.service.IWxUserService;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/weixin/login")
public class LoginController {

    @Resource
    private WeiXinService weiXinService;

    @Resource
    private LoginService loginService;
    @Resource
    private IWxUserService wxUserService;

    @GetMapping()
    public AjaxResult login(String code, String appId) {
        if (StringUtils.isEmpty(code)) {
            return AjaxResult.error("code 不能为空");
        }
        if (StringUtils.isEmpty(appId)) {
            return AjaxResult.error("appid 不能为空");
        }
        // 调用微信登录API获取 openid 等信息
        // 假设返回的 openid 为 "1234567890"
        String appSecret = weiXinService.getAppSecret(appId);
        if (StringUtils.isEmpty(appSecret)) {
            return AjaxResult.error("appid 无效");
        }
        // 验证 code 获取 access_token
        // {"session_key":"sZBR+YP6SesZ/g9A8H4gAQ==","openid":"ob2GQ6yM3n6PB_zHximkX7yi-nX0"}
        String sessionKeyAndOpenId = loginService.getSessionKeyAndOpenId(appId, appSecret, code);
        JSONObject jsonObject = JSON.parseObject(sessionKeyAndOpenId);
        String openid = jsonObject.getString("openid");
        if (StringUtils.isEmpty(openid)) {
            return AjaxResult.error("获取 openid 失败");
        }
        wxUserService.tryInsertUser(openid);
        WxUser wxUser = wxUserService.getUser(openid);
        Long userId = null;
        // 假设 code 验证通过，返回 success 状态码和 openid
        if (wxUser != null){
            userId = wxUser.getId();
        }
        return AjaxResult.success(userId);
    }
}
