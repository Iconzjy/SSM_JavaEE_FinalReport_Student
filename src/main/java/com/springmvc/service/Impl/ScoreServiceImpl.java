package com.springmvc.service.Impl;

import com.springmvc.dao.ScoreMapper;
import com.springmvc.entity.Score;
import com.springmvc.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

//必须要有@Repository，不然在controller中使用@Autowired会报错
@Repository
public class ScoreServiceImpl implements ScoreService {
    @Autowired
    ScoreMapper scoreMapper;

    public int sc_deleteByPrimaryKey(Integer sId) {
        return scoreMapper.deleteByPrimaryKey(sId);
    }

    @Override
    public int sc_insert(Score record) {
        return scoreMapper.insert(record);
    }

    @Override
    public int sc_insertSelective(Score record) {
        return scoreMapper.insertSelective(record);
    }

    @Override
    public Score sc_selectByPrimaryKey(Integer sId) {
        return scoreMapper.selectByPrimaryKey(sId);
    }

    @Override
    public int sc_updateByPrimaryKeySelective(Score record) {
        return scoreMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int sc_updateByPrimaryKey(Score record) {
        return scoreMapper.updateByPrimaryKey(record);
    }

    @Override
    public int sc_getTotal() {
        return scoreMapper.getTotal();
    }

    @Override
    public List<Score> sc_list(int start, int count) {
        return scoreMapper.list(start,count);
    }

    @Override
    public List<Score> sc_selectByStudent(int studentID) {
        return scoreMapper.selectByStudent(studentID);
    }

    @Override
    public List<Score> sc_selectByTeacher(int teacherID) {
        return scoreMapper.selectByTeacher(teacherID);
    }
}
