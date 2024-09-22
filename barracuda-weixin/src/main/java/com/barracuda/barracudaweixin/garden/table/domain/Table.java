package com.barracuda.barracudaweixin.garden.table.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 课程对象 gd_table
 *
 * @author hm
 * @date 2024-09-06
 */
@Getter
@Setter
@ToString
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

    /**
     * 课节数
     */
    @Excel(name = "课节数")
    private Long periodNum;
}
