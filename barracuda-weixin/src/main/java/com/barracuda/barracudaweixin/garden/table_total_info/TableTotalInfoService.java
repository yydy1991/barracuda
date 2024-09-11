package com.barracuda.barracudaweixin.garden.table_total_info;

import com.barracuda.barracudaweixin.garden.subject.domain.Subject;
import com.barracuda.barracudaweixin.garden.subject.service.ISubjectService;
import com.barracuda.barracudaweixin.garden.table.domain.Table;
import com.barracuda.barracudaweixin.garden.table.service.ITableService;
import com.barracuda.barracudaweixin.garden.table_arrangement.domain.TableArrangement;
import com.barracuda.barracudaweixin.garden.table_arrangement.service.ITableArrangementService;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class TableTotalInfoService {

    @Resource
    private ITableService tableService;

    @Resource
    private ITableArrangementService tableArrangementService;

    @Resource
    private ISubjectService subjectService;

    public TableTotalInfo getTableTotalInfo(Long tableId) {
        Assert.notNull(tableId, "tableId cannot be null");
        Table table = tableService.selectTableById(tableId);
        Assert.notNull(table, "table cannot be null");
        List<TableArrangement> tableArrangements = tableArrangementService.listTableArrangement(tableId);
        TableTotalInfo result = new TableTotalInfo();
        result.setTable(table);
        result.setTableArrangements(tableArrangements);
        ArrayList<Subject> subjects = listSubjects(tableArrangements);
        result.setSubjects(subjects);
        return result;
    }

    /**
     * 列出特定课程安排的课程列表
     *
     * @param tableArrangements 课程安排列表
     * @return 符合条件的课程列表
     */
    private ArrayList<Subject> listSubjects(List<TableArrangement> tableArrangements) {
        ArrayList<Subject> result = new ArrayList<>();
        List<Long> subjectIds = new ArrayList<>();
        for (TableArrangement tableArrangement : tableArrangements) {
            Long subjectId = tableArrangement.getSubjectId();
            if (subjectId == null || subjectIds.contains(subjectId)) {
                continue;
            }
            subjectIds.add(subjectId);
            Subject subject = subjectService.selectSubjectById(subjectId);
            result.add(subject);
        }
        return result;
    }
}
