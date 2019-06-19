package com.springmvc.dao;

import com.springmvc.entity.Score;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScoreMapper {
    int deleteByPrimaryKey(Integer sId);

    int insert(Score record);

    int insertSelective(Score record);

    Score selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(Score record);

    int updateByPrimaryKey(Score record);

    Integer getTotal();

    List<Score> list(int start, int count);

    List<Score> selectByStudent(Integer studentID);

    List<Score> selectByTeacher(Integer teacherID);
}