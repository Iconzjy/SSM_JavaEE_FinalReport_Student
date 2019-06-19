package com.springmvc.service;

import com.springmvc.entity.Student;

import java.util.List;

public interface StudentService {
    int s_deleteByPrimaryKey(Integer num);

    int s_insert(Student record);

    int s_insertSelective(Student record);

    Student s_selectByPrimaryKey(Integer num);

    int s_updateByPrimaryKeySelective(Student record);

    int s_updateByPrimaryKey(Student record);

    int s_getTotal();

    List<Student> s_list(int start, int count);


}
