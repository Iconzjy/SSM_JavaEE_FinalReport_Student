package com.springmvc.controller;


import com.springmvc.entity.Course;
import com.springmvc.entity.Score;
import com.springmvc.entity.Student;
import com.springmvc.service.CourseService;
import com.springmvc.service.ScoreService;
import com.springmvc.service.StudentService;
import com.springmvc.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("")
public class StudentController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private ScoreService scoreService;
    @Autowired
    private CourseService courseService;

    // 获取分页参数
    int start = 0;
    int count = 10;
    Page page = new Page(start, count);
    Integer student_current_id=-1;

    @RequestMapping("BaseStudentPage")
    public String rtnStuIndexPage(){
        return "listStudent";
    }

    @RequestMapping("StudentInfoPage")
    public ModelAndView stuInfo(@RequestParam("student_id")int id){
        ModelAndView mav = new ModelAndView("StudentInfo");
        if(student_current_id.equals(-1)){
            student_current_id=id;
        }
        Student student = new Student();
        student = studentService.s_selectByPrimaryKey(id);
        mav.addObject("stu_info",student);

        return mav;
    }

    @RequestMapping("StudentScorePage")
    public ModelAndView stuScore(@RequestParam("pagestart")int pagestart,HttpServletRequest request){
        ModelAndView mav = new ModelAndView("StudentScore");
        try {
            start = pagestart;
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {
        }
        page.setStart(start);
        List<Score> scores = new LinkedList<Score>();
        scores = scoreService.sc_selectByStudent(student_current_id);
        int total = studentService.s_getTotal();
        page.setTotal(total-1);
        mav.addObject("page", page);
        mav.addObject("stu_scores",scores);
        return mav;
    }

    @RequestMapping("StudentCoursePage")
    public ModelAndView stuCourse(@RequestParam("student_id")int id){
        ModelAndView mav = new ModelAndView("StudentCourse");
        if(student_current_id.equals(-1)){
            student_current_id=id;
        }
        Course course = new Course();
        course = courseService.c_selectByPrimaryKey(id);
        mav.addObject("stu_course",course);

        return mav;

    }

    @RequestMapping("StudentAddCoursePage")
    public ModelAndView stuAddCourse(@RequestParam("student_id")int id){
        ModelAndView mav = new ModelAndView("addCourse");
        if(student_current_id.equals(-1)){
            student_current_id=id;
        }
        Course course = new Course();
        course = courseService.c_selectByPrimaryKey(id);
        mav.addObject("stu_course",course);

        return mav;
    }

    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    public String addStudent(HttpServletRequest request, HttpServletResponse response) {
        Student student = new Student();

        int studentID = Integer.parseInt(request.getParameter("student_id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String sex = request.getParameter("sex");
        String address=request.getParameter("address");
        int password=Integer.parseInt(request.getParameter("password"));
        int idcard = Integer.parseInt(request.getParameter("IDCard"));
        int tel = Integer.parseInt(request.getParameter("tel"));
        Date birthday = null;
        // String 类型按照 yyyy-MM-dd 的格式转换为 java.util.Date 类
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            birthday = simpleDateFormat.parse(request.getParameter("birthday"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        student.setNum(studentID);
        student.setName(name);
        student.setAge(age);
        student.setSex(sex);
        student.setBirthday(birthday);
        student.setPassword(password);
        student.setAddress(address);
        student.setIdcard(idcard);
        student.setTel(tel);

        studentService.s_insert(student);

        //为啥不能使用redirect:
        return "listStudent";
    }

    @RequestMapping(value = "/listStudent")
    public ModelAndView listStudent(@RequestParam("pagestart")int pagestart,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listStudent");


        try {
            start = pagestart;
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {
        }
        page.setStart(start);
        List<Student> students = studentService.s_list(page.getStart(), page.getCount());
        int total = studentService.s_getTotal();
        page.setTotal(total-1);
        mav.addObject("page", page);
        mav.addObject("students", students);
        return mav;
    }

    @RequestMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("del_id")int id) {
        studentService.s_deleteByPrimaryKey(id);
        return "listStudent";
    }

    @RequestMapping("/editStudent")
    public ModelAndView editStudent(@RequestParam("edit_id")int id) {
        ModelAndView mav = new ModelAndView("editStudent");
        Student student = studentService.s_selectByPrimaryKey(id);
        mav.addObject("update_student", student);
        return mav;
    }

    @RequestMapping(value = "/updateStudent", method = RequestMethod.POST)
    public String updateStudent(HttpServletRequest request) {
        Student student=new Student();
        String tel = request.getParameter("tel");
        String name = request.getParameter("name");
        String studentID = request.getParameter("student_id");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String pass = request.getParameter("password");
        String idcard =request.getParameter("IDCard");
        String address =request.getParameter("address");
        Date birthday = null;
        // String 类型按照 yyyy-MM-dd 的格式转换为 java.util.Date 类
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            birthday = simpleDateFormat.parse(request.getParameter("birthday"));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Integer i_age=Integer.parseInt(age);
        student.setName(name);
        student.setAge(i_age);
        student.setNum(Integer.parseInt(studentID));
        student.setSex(sex);
        student.setBirthday(birthday);
        student.setPassword(Integer.parseInt(pass));
        student.setTel(Integer.parseInt(tel));
        student.setIdcard(Integer.parseInt(idcard));
        student.setAddress(address);
        studentService.s_updateByPrimaryKeySelective(student);
        return "listStudent";

    }

    @RequestMapping(value = "/addStudentPage")
    public String addStudentPage(){
        return "addStudent";
    }

    @RequestMapping(value = "/searchStudent", method = RequestMethod.POST)
    public ModelAndView searchStudent(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listStudent");

        int ind=Integer.parseInt(request.getParameter("searchStudent"));
        List<Student> students = new LinkedList<Student>();
        Student student=studentService.s_selectByPrimaryKey(ind);
        students.add(student);
        mav.addObject("students", students);
        return mav;
    }
}
