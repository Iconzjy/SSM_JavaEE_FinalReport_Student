package com.springmvc.dao;

import com.springmvc.entity.Student;

import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer num);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer num);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    Integer getTotal();

    List<Student> list(int start, int count);
}