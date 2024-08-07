package com.fly.service;

import com.fly.bean.Msg;

import java.util.List;

public interface MsgService {
    
    boolean add(Msg msg);

    Integer getCount(String condition);

    List<Msg> getPageItems(int begin, int pageSize, String condition);

    boolean delete(Integer mid);

    Msg getById(Integer mid);
}
