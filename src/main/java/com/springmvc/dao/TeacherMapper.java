package com.springmvc.dao;

import com.springmvc.entity.Teacher;

import java.util.List;

public interface TeacherMapper {
    int deleteByPrimaryKey(Integer teacherid);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Integer teacherid);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);

    Integer getTotal();

    List<Teacher> list(int start, int count);
}