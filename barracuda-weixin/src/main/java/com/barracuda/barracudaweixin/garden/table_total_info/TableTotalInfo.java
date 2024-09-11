package com.barracuda.barracudaweixin.garden.table_total_info;

import com.barracuda.barracudaweixin.garden.subject.domain.Subject;
import com.barracuda.barracudaweixin.garden.table.domain.Table;
import com.barracuda.barracudaweixin.garden.table_arrangement.domain.TableArrangement;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class TableTotalInfo {
    private Table table;
    List<TableArrangement> tableArrangements;
    List<Subject> subjects;

}
