package com.fly.service.impl;

import com.fly.bean.Fly;
import com.fly.bean.User;
import com.fly.mapper.FlyMapper;
import com.fly.service.FlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FlyServiceImpl implements FlyService {

    @Autowired
    private FlyMapper flyMapper;


    @Override
    public List<Fly> getByMain() {
        return flyMapper. getByMain();
    }

    @Override
    public List<Fly> getByCondition(String start_city, String end_city, String time) {
        return flyMapper.getByCondition( "%"+start_city+"%",  "%"+end_city+"%",  time) ;
    }

    @Override
    public Fly getById(Integer fid) {
        return flyMapper.getById( fid);
    }

    @Override
    public Integer getCount(String condition) {
        return flyMapper.getCount( condition) ;
    }

    @Override
    public List<User> getPageItems(int begin, int pageSize, String condition) {
        return flyMapper.getPageItems( begin,  pageSize,  condition);
    }

    @Override
    @Transactional
    public boolean update(Fly fly) {
        return flyMapper.update( fly);
    }

    @Override
    @Transactional
    public boolean add(Fly fly) {
        return flyMapper.add( fly) ;
    }

    @Override
    @Transactional
    public boolean delete(Integer fid) {
        return flyMapper.delete( fid) ;
    }


}
