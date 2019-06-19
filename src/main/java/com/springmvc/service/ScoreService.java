package com.springmvc.service;

import com.springmvc.entity.Score;

import java.util.List;

public interface ScoreService {
    int sc_deleteByPrimaryKey(Integer sId);

    int sc_insert(Score record);

    int sc_insertSelective(Score record);

    Score sc_selectByPrimaryKey(Integer sId);

    int sc_updateByPrimaryKeySelective(Score record);

    int sc_updateByPrimaryKey(Score record);

    int sc_getTotal();

    List<Score> sc_list(int start, int count);

    List<Score> sc_selectByStudent(int studentID);

    List<Score> sc_selectByTeacher(int teacherID);
}
