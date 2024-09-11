package com.barracuda.barracudaweixin.garden.table.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课程对象 gd_table
 *
 * @author hm
 * @date 2024-09-06
 */
public class Table extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Long id;

    /**
     * 删除标识 0=未删除,1=已删除
     */
    private Long delFlag;

    /**
     * 课程表表名
     */
    @Excel(name = "课程表表名")
    private String name;

    /**
     * 星期数
     */
    @Excel(name = "星期数")
    private Long weekNum;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setDelFlag(Long delFlag) {
        this.delFlag = delFlag;
    }

    public Long getDelFlag() {
        return delFlag;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setWeekNum(Long weekNum) {
        this.weekNum = weekNum;
    }

    public Long getWeekNum() {
        return weekNum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .append("remark", getRemark())
                .append("name", getName())
                .append("weekNum", getWeekNum())
                .toString();
    }
}
