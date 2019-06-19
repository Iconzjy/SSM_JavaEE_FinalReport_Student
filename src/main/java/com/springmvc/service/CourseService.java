package com.springmvc.service;

import com.springmvc.entity.Course;

import java.util.List;

public interface CourseService {
    int c_deleteByPrimaryKey(Integer cId);

    int c_insert(Course record);

    int c_insertSelective(Course record);

    Course c_selectByPrimaryKey(Integer cId);

    int c_updateByPrimaryKeySelective(Course record);

    int c_updateByPrimaryKey(Course record);

    int c_getTotal();

    List<Course> c_list(int start, int count);

    Course c_selectByTeacher(Integer teacherId);
}
