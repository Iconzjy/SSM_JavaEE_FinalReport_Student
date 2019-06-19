package com.springmvc.controller;


import com.springmvc.entity.Course;
import com.springmvc.entity.Score;
import com.springmvc.entity.Student;
import com.springmvc.entity.Teacher;
import com.springmvc.service.CourseService;
import com.springmvc.service.ScoreService;
import com.springmvc.service.StudentService;
import com.springmvc.service.TeacherService;
import com.springmvc.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;
    @Autowired
    private CourseService courseService;
    @Autowired
    private ScoreService scoreService;
    @Autowired
    private StudentService studentService;

    // 获取分页参数
    int start = 0;
    int count = 10;
    Page page = new Page(start, count);
    Integer teacher_current_id=-1;
    boolean isUsed=false;
    Integer teacherID=-1;

    @RequestMapping("BaseTeacherPage")
    public String rtnStuIndexPage(){
        return "listTeacher";
    }

    @RequestMapping("TeacherInfoPage")
    public ModelAndView stuInfo(@RequestParam("teacher_id")int id){
        ModelAndView mav = new ModelAndView("teacherInfo");
        if(teacherService.equals(-1)){
            teacher_current_id=id;
        }
        Teacher teacher = new Teacher();
        teacher = teacherService.t_selectByPrimaryKey(id);
        mav.addObject("tea_info",teacher);
        return mav;
    }

    @RequestMapping(value = "/addTeacherPage")
    public String addTeacherPage(){
        return "addTeacher";
    }

    @RequestMapping(value = "/addTeacher")
    public String addTeacher(HttpServletRequest request){
        Teacher teacher = new Teacher();
        Date birthday = null;
        // String 类型按照 yyyy-MM-dd 的格式转换为 java.util.Date 类
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            birthday = simpleDateFormat.parse(request.getParameter("teacher-birth"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        teacher.setAddress(request.getParameter("teacher-addr"));
        teacher.setBirthday(birthday);
        teacher.setCollegeid(Integer.parseInt(request.getParameter("teacher-collegeID")));
        teacher.setIdcard(request.getParameter("teacher-IDC"));
        teacher.setPassword(request.getParameter("teacher-pwd"));
        teacher.setSchoolid(Integer.parseInt(request.getParameter("teacher-schoolID")));
        teacher.setTeacherid(Integer.parseInt(request.getParameter("teacher-id")));
        teacher.setSex(request.getParameter("teacher-sex"));
        teacher.setTel(request.getParameter("teacher-tel"));
        teacher.setTeachername(request.getParameter("teacher-name"));
        teacherService.t_insertSelective(teacher);
        return "addTeacher";
    }

    @RequestMapping(value = "/listTeacher")
    public ModelAndView listTeacher(@RequestParam("pagestart")int pagestart, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listTeacher");

        try {
            start = pagestart;
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {
        }
        page.setStart(start);
        List<Teacher> teachers = teacherService.t_list(page.getStart(), page.getCount());
        int total = teacherService.t_getTotal();
        page.setTotal(total-1);
        mav.addObject("page", page);
        mav.addObject("teachers", teachers);
        return mav;
    }

    @RequestMapping("/deleteTeacher")
    public String deleteTeacher(@RequestParam("del_id")int id) {
        teacherService.t_deleteByPrimaryKey(id);
        return "listTeacher";
    }

    @RequestMapping("/editTeacher")
    public ModelAndView editTeacher(@RequestParam("edit_id")int id) {
        ModelAndView mav = new ModelAndView("editTeacher");
        Teacher teacher = teacherService.t_selectByPrimaryKey(id);
        mav.addObject("update_teacher", teacher);
        return mav;
    }

    @RequestMapping(value = "/updateTeacher", method = RequestMethod.POST)
    public String updateTeacher(HttpServletRequest request) {
        Teacher teacher = new Teacher();
        Date birthday = null;
        // String 类型按照 yyyy-MM-dd 的格式转换为 java.util.Date 类
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            birthday = simpleDateFormat.parse(request.getParameter("teacher-birth"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        teacher.setBirthday(birthday);
        teacher.setAddress(request.getParameter("teacher-addr"));
        teacher.setCollegeid(Integer.parseInt(request.getParameter("teacher-collegeID")));
        teacher.setIdcard(request.getParameter("teacher-IDC"));
        teacher.setPassword(request.getParameter("teacher-pwd"));
        teacher.setTeacherid(Integer.parseInt(request.getParameter("teacher-id")));
        teacher.setSchoolid(Integer.parseInt(request.getParameter("teacher-schoolID")));
        teacher.setSex(request.getParameter("teacher-sex"));
        teacher.setTel(request.getParameter("teacher-tel"));
        teacher.setTeachername(request.getParameter("teacher-name"));
        teacherService.t_updateByPrimaryKeySelective(teacher);
        return "listTeacher";

    }

    @RequestMapping(value = "/searchTeacher", method = RequestMethod.POST)
    public ModelAndView searchTeacher(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listTeacher");

        int ind=Integer.parseInt(request.getParameter("searchTeacher"));
        List<Teacher> teachers = new LinkedList<Teacher>();
        Teacher teacher=teacherService.t_selectByPrimaryKey(ind);
        teachers.add(teacher);
        mav.addObject("teachers", teachers);
        return mav;
    }

    @RequestMapping("listScore_teacher")
    public ModelAndView listScore(@RequestParam("pagestart")int pagestart, HttpServletRequest request) {
//        ModelAndView mav = new ModelAndView("listScore_teacher");
//        if(isUsed==false){
//            teacherID=pagestart;
//            isUsed=true;
//        }
//        Course course=courseService.c_selectByTeacher(teacherID);
//        try {
//            start = pagestart;
//            count = Integer.parseInt(request.getParameter("page.count"));
//        } catch (Exception e) {
//        }
//        page.setStart(start);
//
//        List<Score> scores = scoreService.sc_selectByTeacher(course.getcTeacherid());
//        List<Score> scores1 = new LinkedList<Score>();
//        for(int i=page.getStart()-1;i<page.getCount();i++)
//        {
//            scores1.add(i,scores.get(i));
//        }
//
//        int total = scores.size();
//        page.setTotal(total-2);
//        mav.addObject("page", page);
//        mav.addObject("scores", scores1);

        ModelAndView mav = new ModelAndView("listScore_teacher");


        try {
            start = pagestart;
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {
        }
        page.setStart(start);
        List<Score> scores = scoreService.sc_list(page.getStart(), page.getCount());
        int total = scoreService.sc_getTotal();
        page.setTotal(total-1);
        mav.addObject("page", page);
        mav.addObject("scores", scores);

        return mav;
    }
}
