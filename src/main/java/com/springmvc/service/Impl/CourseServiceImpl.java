package com.springmvc.service.Impl;

import com.springmvc.dao.CourseMapper;
import com.springmvc.entity.Course;
import com.springmvc.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

//必须要有@Repository，不然在controller中使用@Autowired会报错
@Repository
public class CourseServiceImpl implements CourseService {
    @Autowired
    CourseMapper courseMapper;

    @Override
    public int c_deleteByPrimaryKey(Integer cId) {
        return courseMapper.deleteByPrimaryKey(cId);
    }

    @Override
    public int c_insert(Course record) {
        return courseMapper.insert(record);
    }

    @Override
    public int c_insertSelective(Course record) {
        return courseMapper.insertSelective(record);
    }

    @Override
    public Course c_selectByPrimaryKey(Integer cId) {
        return courseMapper.selectByPrimaryKey(cId);
    }

    @Override
    public int c_updateByPrimaryKeySelective(Course record) {
        return courseMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int c_updateByPrimaryKey(Course record) {
        return courseMapper.updateByPrimaryKey(record);
    }

    @Override
    public int c_getTotal() {
        return courseMapper.getTotal();
    }

    @Override
    public List<Course> c_list(int start, int count) {
        return courseMapper.list(start,count);
    }

    @Override
    public Course c_selectByTeacher(Integer teacherId) {
        return courseMapper.selectByTeacher(teacherId);
    }

}
