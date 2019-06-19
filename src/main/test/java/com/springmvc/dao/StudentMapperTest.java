package com.springmvc.dao;

import com.springmvc.entity.Student;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

import static org.junit.Assert.*;

public class StudentMapperTest {

    private ApplicationContext applicationContext;

    @Autowired
    private StudentMapper studentMapper;

    @Before
    public void setUp() throws Exception{
        //加载spring配置文件
        applicationContext=new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        //导入需要测试的
        studentMapper = applicationContext.getBean(StudentMapper.class);
    }
    @After
    public void tearDown() throws Exception{

    }
    @Test
    public void s_getTotal(){
        Student student=studentMapper.selectByPrimaryKey(1);
        System.out.println(student.getName());
        System.out.println(studentMapper.getTotal());
        List<Student> list;
        list=studentMapper.list(1,1);
        System.out.println(list.get(0).getName());
    }
}