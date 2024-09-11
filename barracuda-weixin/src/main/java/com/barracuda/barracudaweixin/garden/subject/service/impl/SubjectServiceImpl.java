package com.barracuda.barracudaweixin.garden.subject.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.barracuda.barracudaweixin.garden.subject.mapper.SubjectMapper;
import com.barracuda.barracudaweixin.garden.subject.domain.Subject;
import com.barracuda.barracudaweixin.garden.subject.service.ISubjectService;
import com.ruoyi.common.core.text.Convert;

/**
 * 学科Service业务层处理
 *
 * @author hm
 * @date 2024-09-06
 */
@Service
public class SubjectServiceImpl implements ISubjectService {
    @Autowired
    private SubjectMapper subjectMapper;

    /**
     * 查询学科
     *
     * @param id 学科主键
     * @return 学科
     */
    @Override
    public Subject selectSubjectById(Long id) {
        return subjectMapper.selectSubjectById(id);
    }

    /**
     * 查询学科列表
     *
     * @param subject 学科
     * @return 学科
     */
    @Override
    public List<Subject> selectSubjectList(Subject subject) {
        return subjectMapper.selectSubjectList(subject);
    }

    /**
     * 新增学科
     *
     * @param subject 学科
     * @return 结果
     */
    @Override
    public int insertSubject(Subject subject) {
        subject.setCreateTime(DateUtils.getNowDate());
        return subjectMapper.insertSubject(subject);
    }

    /**
     * 修改学科
     *
     * @param subject 学科
     * @return 结果
     */
    @Override
    public int updateSubject(Subject subject) {
        return subjectMapper.updateSubject(subject);
    }

    /**
     * 批量删除学科
     *
     * @param ids 需要删除的学科主键
     * @return 结果
     */
    @Override
    public int deleteSubjectByIds(String ids) {
        return subjectMapper.deleteSubjectByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学科信息
     *
     * @param id 学科主键
     * @return 结果
     */
    @Override
    public int deleteSubjectById(String id) {
        return subjectMapper.deleteSubjectById(id);
    }
}
