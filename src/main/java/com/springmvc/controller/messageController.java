package com.springmvc.controller;

import com.springmvc.entity.Student;
import com.springmvc.entity.Teacher;
import com.springmvc.service.Impl.StudentServiceImlp;
import com.springmvc.service.Impl.TeacherServiceImpl;
import com.springmvc.service.StudentService;
import com.springmvc.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("")
public class messageController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private TeacherService teacherService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login1(String uname, String pwd, HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        String type;
        uname = request.getParameter("loginName");
        pwd = request.getParameter("passWord");
        type = request.getParameter("loginType");

        if(type.equals("管理员")){
            if(uname != null && pwd != null && uname.equals("zeng")  && pwd.equals("123")){
                mav.setViewName("basePage");
                return mav;
            }
        }else if(type.equals("教师")){
            int ind=Integer.parseInt(uname);
            Teacher teacher = teacherService.t_selectByPrimaryKey(ind);
            if(teacher.getPassword().equals(pwd)){
                mav.setViewName("basePageTeacher");
                mav.addObject("teacher_id",uname);
                return mav;
            }
        }else if(type.equals("学生")){
            int ind=Integer.parseInt(uname);
            Student student = studentService.s_selectByPrimaryKey(ind);
            if(student.getPassword().equals(Integer.parseInt(pwd))){
                mav.setViewName("basePageStudent");
                mav.addObject("stu_id",uname);
                return mav;
            }
        }else{
            mav.setViewName("test");
            return mav;
        }
        return null;
    }

    @RequestMapping(value = "/login/page")
    public String loginPage(String uname, String pwd, HttpServletRequest request){
        return "login";
    }

    @RequestMapping(value = "/register/page")
    public String registerPage(){
        return "register";
    }

    @RequestMapping(value = "/test")
    public String test(){
        return "basePage";
    }
}
