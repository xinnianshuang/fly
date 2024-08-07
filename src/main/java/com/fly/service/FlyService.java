package com.fly.service;

import com.fly.bean.Fly;
import com.fly.bean.User;

import java.util.List;

public interface FlyService {

    List<Fly> getByMain();

    List<Fly> getByCondition(String start_city, String end_city, String time);

    Fly getById(Integer fid);

    Integer getCount(String condition);

    List<User> getPageItems(int begin, int pageSize, String condition);

    boolean update(Fly fly);

    boolean add(Fly fly);

    boolean delete(Integer fid);
}
