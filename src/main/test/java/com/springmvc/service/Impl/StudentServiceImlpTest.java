package com.springmvc.service.Impl;

import com.springmvc.entity.Student;
import com.springmvc.service.StudentService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import static org.junit.Assert.*;
@Controller
public class StudentServiceImlpTest {

    @Autowired
    private StudentService studentService;
    @Test
    public void s_selectByPrimaryKey() {
        String pwd="1";
        String string="1";
        Integer integer=1;
        Student teacher = studentService.s_selectByPrimaryKey(integer);
        if(teacher!=null && teacher.getPassword().equals(pwd)){
            System.out.println("success");
        }
        System.out.println("error");
    }
}