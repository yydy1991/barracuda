package com.barracuda.barracudaweixin.user.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 微信用户对象 wx_user
 *
 * @author hm
 * @date 2024-08-27
 */
public class WxUser extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    private Long id;

    /**
     *
     */
    @Excel(name = "")
    private String openId;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getOpenId() {
        return openId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("openId", getOpenId())
                .append("createTime", getCreateTime())
                .toString();
    }
}
