package com.springmvc.entity;

import java.util.Date;
import java.util.List;

public class Student {
    private Integer num;

    private String name;

    private Integer password;

    private String sex;

    private Integer age;

    private String address;

    private Date birthday;

    private Integer idcard;

    private Integer tel;

    private Integer tatol;

    private List<Student> list;

    public List<Student> getList() {
        return list;
    }

    public Integer getTotal() {
        return tatol;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPassword() {
        return password;
    }

    public void setPassword(Integer password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getIdcard() {
        return idcard;
    }

    public void setIdcard(Integer idcard) {
        this.idcard = idcard;
    }

    public Integer getTel() {
        return tel;
    }

    public void setTel(Integer tel) {
        this.tel = tel;
    }
}