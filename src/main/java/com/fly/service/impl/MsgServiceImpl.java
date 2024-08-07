package com.fly.service.impl;

import com.fly.bean.Msg;
import com.fly.mapper.MsgMapper;
import com.fly.service.MsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MsgServiceImpl implements MsgService {
    @Autowired
    private MsgMapper msgMapper;

    @Override
    @Transactional
    public boolean add(Msg msg) {
        return msgMapper.add( msg);
    }

    @Override
    public Integer getCount(String condition) {
        return msgMapper.getCount( condition);
    }

    @Override
    public List<Msg> getPageItems(int begin, int pageSize, String condition) {
        return msgMapper.getPageItems( begin,  pageSize,  condition);
    }

    @Override
    public boolean delete(Integer mid) {
        return msgMapper. delete( mid);
    }

    @Override
    public Msg getById(Integer mid) {
        return msgMapper.getById( mid);
    }
}
