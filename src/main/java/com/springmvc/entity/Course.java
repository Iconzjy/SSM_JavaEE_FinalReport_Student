package com.springmvc.entity;

import java.util.List;

public class Course {
    private Integer cId;

    private String cName;

    private Integer cTeacherid;

    private String cRoom;

    private Integer cMaxstudentnum;

    private Integer collegeid;

    private Integer tatol;

    private List<Course> list;

    public List<Course> getList() {
        return list;
    }

    public Integer getTotal() {
        return tatol;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public Integer getcTeacherid() {
        return cTeacherid;
    }

    public void setcTeacherid(Integer cTeacherid) {
        this.cTeacherid = cTeacherid;
    }

    public String getcRoom() {
        return cRoom;
    }

    public void setcRoom(String cRoom) {
        this.cRoom = cRoom;
    }

    public Integer getcMaxstudentnum() {
        return cMaxstudentnum;
    }

    public void setcMaxstudentnum(Integer cMaxstudentnum) {
        this.cMaxstudentnum = cMaxstudentnum;
    }

    public Integer getCollegeid() {
        return collegeid;
    }

    public void setCollegeid(Integer collegeid) {
        this.collegeid = collegeid;
    }
}