package com.springmvc.controller;


import com.springmvc.entity.Course;
import com.springmvc.entity.Score;
import com.springmvc.service.CourseService;
import com.springmvc.service.ScoreService;
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
public class ScoreController {
    @Autowired
    private ScoreService scoreService;


    // 获取分页参数
    int start = 0;
    int count = 10;
    Page page = new Page(start, count);


    @RequestMapping("BaseScorePage")
    public String rtnScoreIndexPage(){
        return "listScore";
    }

    @RequestMapping(value = "/addScorePage")
    public String addScorePage(){
        return "addScore";
    }

    @RequestMapping(value = "/addScore", method = RequestMethod.POST)
    public String addScore(HttpServletRequest request){
        Score score = new Score();
        score.setsId(Integer.parseInt(request.getParameter("score_id")));
        score.setsStudentid(Integer.parseInt(request.getParameter("score_stuID")));
        score.setsCourseid(Integer.parseInt(request.getParameter("score_CourseID")));
        score.setsScore(Float.parseFloat(request.getParameter("score")));
        scoreService.sc_insert(score);
        return "addScore";
    }

    @RequestMapping(value = "/listScore")
    public ModelAndView listScore_teacher(@RequestParam("pagestart")int pagestart, HttpServletRequest request) {
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


    @RequestMapping("/deleteScore")
    public String deleteScore(@RequestParam("del_id")int id) {
        scoreService.sc_deleteByPrimaryKey(id);
        return "listScore";
    }

    @RequestMapping("/editScore")
    public ModelAndView editScore(@RequestParam("edit_id")int id) {
        ModelAndView mav = new ModelAndView("editScore");
        Score score = scoreService.sc_selectByPrimaryKey(id);
        mav.addObject("update_score", score);
        return mav;
    }

    @RequestMapping(value = "/updateScore", method = RequestMethod.POST)
    public String updateScore(HttpServletRequest request) {
        Score score = new Score();
        score.setsStudentid(Integer.parseInt(request.getParameter("score_stuID")));
        score.setsId(Integer.parseInt(request.getParameter("score_id")));
        score.setsCourseid(Integer.parseInt(request.getParameter("score_CourseID")));
        score.setsScore(Float.parseFloat(request.getParameter("score")));
        scoreService.sc_updateByPrimaryKeySelective(score);
        return "listScore";
    }

    @RequestMapping(value = "/searchScore", method = RequestMethod.POST)
    public ModelAndView searchStudent(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listScore");

        int ind=Integer.parseInt(request.getParameter("searchStudent"));
        List<Score> scores = new LinkedList<Score>();
        Score score=scoreService.sc_selectByPrimaryKey(ind);
        scores.add(score);
        mav.addObject("students", scores);
        return mav;
    }
}
