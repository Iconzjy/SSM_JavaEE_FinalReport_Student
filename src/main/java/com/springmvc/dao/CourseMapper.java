package com.springmvc.dao;

import com.springmvc.entity.Course;

import java.util.List;

public interface CourseMapper {
    int deleteByPrimaryKey(Integer cId);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer cId);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

    Integer getTotal();

    List<Course> list(int start, int count);

    Course selectByTeacher(Integer teacherId);
}