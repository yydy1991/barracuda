package com.barracuda.barracudaweixin.user.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.barracuda.barracudaweixin.user.mapper.WxUserMapper;
import com.barracuda.barracudaweixin.user.domain.WxUser;
import com.barracuda.barracudaweixin.user.service.IWxUserService;
import com.ruoyi.common.core.text.Convert;
import org.springframework.util.Assert;

import javax.annotation.Resource;

/**
 * 微信用户Service业务层处理
 *
 * @author hm
 * @date 2024-08-27
 */
@Service
public class WxUserServiceImpl implements IWxUserService {
    @Resource
    private WxUserMapper wxUserMapper;

    /**
     * 查询微信用户
     *
     * @param id 微信用户主键
     * @return 微信用户
     */
    @Override
    public WxUser selectWxUserById(String id) {
        return wxUserMapper.selectWxUserById(id);
    }

    /**
     * 查询微信用户列表
     *
     * @param wxUser 微信用户
     * @return 微信用户
     */
    @Override
    public List<WxUser> selectWxUserList(WxUser wxUser) {
        return wxUserMapper.selectWxUserList(wxUser);
    }

    /**
     * 新增微信用户
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    @Override
    public int insertWxUser(WxUser wxUser) {
        wxUser.setCreateTime(DateUtils.getNowDate());
        return wxUserMapper.insertWxUser(wxUser);
    }

    /**
     * 修改微信用户
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    @Override
    public int updateWxUser(WxUser wxUser) {
        return wxUserMapper.updateWxUser(wxUser);
    }

    /**
     * 批量删除微信用户
     *
     * @param ids 需要删除的微信用户主键
     * @return 结果
     */
    @Override
    public int deleteWxUserByIds(String ids) {
        return wxUserMapper.deleteWxUserByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除微信用户信息
     *
     * @param id 微信用户主键
     * @return 结果
     */
    @Override
    public int deleteWxUserById(String id) {
        return wxUserMapper.deleteWxUserById(id);
    }

    /**
     * 尝试新增用户
     *
     * @param openId
     */
    @Override
    public void tryInsertUser(String openId) {
        if (!hasUser(openId)) {
            WxUser wxUser = new WxUser();
            wxUser.setOpenId(openId);
            insertWxUser(wxUser);
        }
    }

    /**
     * 时候有此用户
     *
     * @param openId
     */
    @Override
    public boolean hasUser(String openId) {
        WxUser wxUser = new WxUser();
        wxUser.setOpenId(openId);
        List<WxUser> wxUsers = selectWxUserList(wxUser);
        return !wxUsers.isEmpty();
    }

    /**
     * 统计用户数量
     *
     * @param user
     */
    @Override
    public long countUsers(WxUser user) {
        return wxUserMapper.countUsers(user);
    }

    @Override
    public WxUser getUser(String openid) {
        Assert.notNull(openid, "openid cannot be null");
        WxUser wxUser = new WxUser();
        wxUser.setOpenId(openid);
        List<WxUser> wxUsers = selectWxUserList(wxUser);
        if (wxUsers.size() == 1){
            return wxUsers.get(0);
        }
        return null;
    }
}
