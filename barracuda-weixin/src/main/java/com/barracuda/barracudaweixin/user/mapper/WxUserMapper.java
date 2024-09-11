package com.barracuda.barracudaweixin.user.mapper;

import java.util.List;

import com.barracuda.barracudaweixin.user.domain.WxUser;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 * 微信用户Mapper接口
 *
 * @author hm
 * @date 2024-08-27
 */
@Mapper
public interface WxUserMapper {
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
     * 删除微信用户
     *
     * @param id 微信用户主键
     * @return 结果
     */
    public int deleteWxUserById(String id);

    /**
     * 批量删除微信用户
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteWxUserByIds(String[] ids);

    long countUsers(WxUser user);
}
