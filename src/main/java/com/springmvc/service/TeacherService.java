package com.springmvc.service;

import com.springmvc.entity.Teacher;

import java.util.List;

public interface TeacherService {
    int t_deleteByPrimaryKey(Integer teacherid);

    int t_insert(Teacher record);

    int t_insertSelective(Teacher record);

    Teacher t_selectByPrimaryKey(Integer teacherid);

    int t_updateByPrimaryKeySelective(Teacher record);

    int t_updateByPrimaryKey(Teacher record);

    int t_getTotal();

    List<Teacher> t_list(int start, int count);
}
