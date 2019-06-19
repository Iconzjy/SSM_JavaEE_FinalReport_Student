package com.springmvc.entity;

import org.omg.CORBA.INTERNAL;

import java.util.List;

public class Score {
    private Integer sId;

    private Integer sStudentid;

    private Integer sCourseid;

    private Float sScore;

    private Integer tatol;

    private List<Score> list;

    private List<Score> select_by_student_List;

    private List<Score> select_by_teacher_List;

    public List<Score> getSelect_by_teacher_List(){
        return select_by_teacher_List;
    }

    public List<Score> getSelect_by_student_List(){
        return select_by_student_List;
    }

    public List<Score> getList() {
        return list;
    }

    public Integer getTotal() {
        return tatol;
    }

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getsStudentid() {
        return sStudentid;
    }

    public void setsStudentid(Integer sStudentid) {
        this.sStudentid = sStudentid;
    }

    public Integer getsCourseid() {
        return sCourseid;
    }

    public void setsCourseid(Integer sCourseid) {
        this.sCourseid = sCourseid;
    }

    public Float getsScore() {
        return sScore;
    }

    public void setsScore(Float sScore) {
        this.sScore = sScore;
    }
}