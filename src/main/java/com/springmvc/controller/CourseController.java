package com.springmvc.controller;


import com.springmvc.entity.Course;
import com.springmvc.service.CourseService;
import com.springmvc.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("")
public class CourseController {

    @Autowired
    private CourseService courseService;

    // 获取分页参数
    int start = 0;
    int count = 10;
    Page page = new Page(start, count);
    Integer student_current_id=-1;

    @RequestMapping("BaseCoursePage")
    public String rtnCourseIndexPage(){
        return "listCourse";
    }

    @RequestMapping(value = "/addCoursePage")
    public String addCoursePage(){
        return "addCourse";
    }

    @RequestMapping(value = "/addCourse", method = RequestMethod.POST)
    public String addCourse(HttpServletRequest request){
        Course course = new Course();
        int courseID = Integer.parseInt(request.getParameter("course_id"));
        String name = request.getParameter("course_name");
        int teacherID = Integer.parseInt(request.getParameter("course_teacher"));
        String room = request.getParameter("course_room");
        int maxStudentNum = Integer.parseInt(request.getParameter("course_studentMax"));
        int collegeID = Integer.parseInt(request.getParameter("course_college"));

        course.setcId(courseID);
        course.setcName(name);
        course.setcRoom(room);
        course.setcTeacherid(teacherID);
        course.setcMaxstudentnum(maxStudentNum);
        course.setCollegeid(collegeID);
        courseService.c_insert(course);
        return "addCourse";
    }

    @RequestMapping(value = "/listCourse")
    public ModelAndView listCourse(@RequestParam("pagestart")int pagestart, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listCourse");

        try {
            start = pagestart;
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {
        }
        page.setStart(start);
        List<Course> courses = courseService.c_list(page.getStart(), page.getCount());
        int total = courseService.c_getTotal();
        page.setTotal(total-2);
        mav.addObject("page", page);
        mav.addObject("courses", courses);
        return mav;
    }

    @RequestMapping("/deleteCourse")
    public String deleteCourse(@RequestParam("del_id")int id) {
        courseService.c_deleteByPrimaryKey(id);
        return "listCourse";
    }

    @RequestMapping("/editCourse")
    public ModelAndView editCourse(@RequestParam("edit_id")int id) {
        ModelAndView mav = new ModelAndView("editCourse");
        Course course = courseService.c_selectByPrimaryKey(id);
        mav.addObject("update_Course", course);
        return mav;
    }

    @RequestMapping(value = "/updateCourse", method = RequestMethod.POST)
    public String updateCourse(HttpServletRequest request) {
        Course course = new Course();
        int courseID = Integer.parseInt(request.getParameter("course_id"));
        String name = request.getParameter("course_name");
        String room = request.getParameter("course_room");
        int teacherID = Integer.parseInt(request.getParameter("course_teacher"));
        int maxStudentNum = Integer.parseInt(request.getParameter("course_studentMax"));
        int collegeID = Integer.parseInt(request.getParameter("course_college"));

        course.setcRoom(room);
        course.setcId(courseID);
        course.setcName(name);
        course.setcTeacherid(teacherID);
        course.setcMaxstudentnum(maxStudentNum);
        course.setCollegeid(collegeID);
        courseService.c_updateByPrimaryKeySelective(course);
        return "listCourse";

    }

    @RequestMapping(value = "/searchCourse", method = RequestMethod.POST)
    public ModelAndView searchStudent(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listCourse");

        int ind=Integer.parseInt(request.getParameter("searchCourse"));
        List<Course> courses = new LinkedList<Course>();
        Course course=courseService.c_selectByPrimaryKey(ind);
        courses.add(course);
        mav.addObject("courses", courses);
        return mav;
    }
}
