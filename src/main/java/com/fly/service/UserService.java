package com.fly.service;

import com.fly.bean.User;

import java.util.List;

public interface UserService {
    User login(String username, String password);

    boolean add(User user);

    boolean update(User user);

    User getById(Integer uid);


    Integer getCount(String condition);

    List<User> getPageItems(int begin, int pageSize, String condition);

    boolean delete(Integer uid);

    Integer getUserByVIP(String vip);
}
