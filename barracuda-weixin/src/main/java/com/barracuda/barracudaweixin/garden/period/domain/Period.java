package com.barracuda.barracudaweixin.garden.period.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课节对象 gd_period
 *
 * @author hm
 * @date 2024-09-06
 */
public class Period extends BaseEntity {
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
     * 课程表id
     */
    @Excel(name = "课程表id")
    private Long tableId;

    /**
     * 名称
     */
    @Excel(name = "名称")
    private String name;

    /**
     * 排序
     */
    @Excel(name = "排序")
    private Long sort;

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

    public void setTableId(Long tableId) {
        this.tableId = tableId;
    }

    public Long getTableId() {
        return tableId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setSort(Long sort) {
        this.sort = sort;
    }

    public Long getSort() {
        return sort;
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
                .append("tableId", getTableId())
                .append("name", getName())
                .append("sort", getSort())
                .toString();
    }
}
