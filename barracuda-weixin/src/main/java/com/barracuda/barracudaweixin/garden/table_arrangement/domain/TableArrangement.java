package com.barracuda.barracudaweixin.garden.table_arrangement.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课程布置对象 gd_table_arrangement
 *
 * @author hm
 * @date 2024-09-06
 */
public class TableArrangement extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    private String id;

    /**
     * 课程表id
     */
    @Excel(name = "课程表id")
    private Long tableId;

    /**
     *
     */
    @Excel(name = "")
    private Long subjectId;

    /**
     *
     */
    @Excel(name = "")
    private Long weekIndex;

    /**
     *
     */
    @Excel(name = "")
    private Long lessonIndex;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setTableId(Long tableId) {
        this.tableId = tableId;
    }

    public Long getTableId() {
        return tableId;
    }

    public void setSubjectId(Long subjectId) {
        this.subjectId = subjectId;
    }

    public Long getSubjectId() {
        return subjectId;
    }

    public void setWeekIndex(Long weekIndex) {
        this.weekIndex = weekIndex;
    }

    public Long getWeekIndex() {
        return weekIndex;
    }

    public void setLessonIndex(Long lessonIndex) {
        this.lessonIndex = lessonIndex;
    }

    public Long getLessonIndex() {
        return lessonIndex;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("tableId", getTableId())
                .append("subjectId", getSubjectId())
                .append("weekIndex", getWeekIndex())
                .append("lessonIndex", getLessonIndex())
                .toString();
    }
}
