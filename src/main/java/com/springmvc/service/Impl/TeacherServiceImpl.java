package com.springmvc.service.Impl;

import com.springmvc.dao.TeacherMapper;
import com.springmvc.entity.Teacher;
import com.springmvc.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

//必须要有@Repository，不然在controller中使用@Autowired会报错
@Repository
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherMapper teacherMapper;
    @Override
    public int t_deleteByPrimaryKey(Integer teacherid) {
        return teacherMapper.deleteByPrimaryKey(teacherid);
    }

    @Override
    public int t_insert(Teacher record) {
        return teacherMapper.insert(record);
    }

    @Override
    public int t_insertSelective(Teacher record) {
        return teacherMapper.insertSelective(record);
    }

    @Override
    public Teacher t_selectByPrimaryKey(Integer teacherid) {
        return teacherMapper.selectByPrimaryKey(teacherid);
    }

    @Override
    public int t_updateByPrimaryKeySelective(Teacher record) {
        return teacherMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int t_updateByPrimaryKey(Teacher record) {
        return teacherMapper.updateByPrimaryKey(record);
    }

    @Override
    public int t_getTotal() {
        return teacherMapper.getTotal();
    }

    @Override
    public List<Teacher> t_list(int start, int count) {
        return teacherMapper.list(start,count);
    }
}
