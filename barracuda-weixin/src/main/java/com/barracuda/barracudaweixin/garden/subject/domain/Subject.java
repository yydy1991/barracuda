package com.barracuda.barracudaweixin.garden.subject.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学科对象 gd_subject
 *
 * @author hm
 * @date 2024-09-06
 */
public class Subject extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    private Long id;

    /**
     * 名称
     */
    @Excel(name = "名称")
    private String name;

    /**
     * 是否为系统内置(1:是，0:否)
     */
    @Excel(name = "是否为系统内置(1:是，0:否)")
    private Long isSystem;

    /**
     *
     */
    @Excel(name = "")
    private Long wxUserId;

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setIsSystem(Long isSystem) {
        this.isSystem = isSystem;
    }

    public Long getIsSystem() {
        return isSystem;
    }

    public void setWxUserId(Long wxUserId) {
        this.wxUserId = wxUserId;
    }

    public Long getWxUserId() {
        return wxUserId;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("isSystem", getIsSystem())
                .append("wxUserId", getWxUserId())
                .append("createTime", getCreateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
