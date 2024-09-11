package com.barracuda.barracudaweixin.user.service;

import java.util.List;

import com.barracuda.barracudaweixin.user.domain.WxUser;
import com.ruoyi.common.core.domain.entity.SysUser;

/**
 * 微信用户Service接口
 *
 * @author hm
 * @date 2024-08-27
 */
public interface IWxUserService {
    /**
     * 查询微信用户
     *
     * @param id 微信用户主键
     * @return 微信用户
     */
    public WxUser selectWxUserById(String id);

    /**
     * 查询微信用户列表
     *
     * @param wxUser 微信用户
     * @return 微信用户集合
     */
    public List<WxUser> selectWxUserList(WxUser wxUser);

    /**
     * 新增微信用户
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    public int insertWxUser(WxUser wxUser);

    /**
     * 修改微信用户
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    public int updateWxUser(WxUser wxUser);

    /**
     * 批量删除微信用户
     *
     * @param ids 需要删除的微信用户主键集合
     * @return 结果
     */
    public int deleteWxUserByIds(String ids);

    /**
     * 删除微信用户信息
     *
     * @param id 微信用户主键
     * @return 结果
     */
    public int deleteWxUserById(String id);

    /**
     * 尝试新增用户
     */
    void tryInsertUser(String openId);

    /**
     * 时候有此用户
     */
    boolean hasUser(String openId);

    /**
     * 统计用户数量
     */
    long countUsers(WxUser user);

    WxUser getUser(String openid);
}
