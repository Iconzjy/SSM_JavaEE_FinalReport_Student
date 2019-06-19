package com.springmvc.service.Impl;

import com.springmvc.dao.StudentMapper;
import com.springmvc.entity.Student;
import com.springmvc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

//必须要有@Repository，不然在controller中使用@Autowired会报错
@Repository
public class StudentServiceImlp implements StudentService {
    @Autowired
    StudentMapper studentMapper;

    @Override
    public int s_deleteByPrimaryKey(Integer num) {
        return studentMapper.deleteByPrimaryKey(num);
    }

    @Override
    public int s_insert(Student record) {
        return studentMapper.insert(record);
    }

    @Override
    public int s_insertSelective(Student record) {
        return studentMapper.insertSelective(record);
    }

    @Override
    public Student s_selectByPrimaryKey(Integer num) {
        return studentMapper.selectByPrimaryKey(num);
    }

    @Override
    public int s_updateByPrimaryKeySelective(Student record) {
        return studentMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int s_updateByPrimaryKey(Student record) {
        return studentMapper.updateByPrimaryKey(record);
    }

    @Override
    public int s_getTotal(){
        return studentMapper.getTotal();
    }

    @Override
    public List<Student> s_list(int start, int count) {
        return studentMapper.list(start, count);
    }
}
