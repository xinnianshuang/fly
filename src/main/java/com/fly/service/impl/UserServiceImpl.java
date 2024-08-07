package com.fly.service.impl;

import com.fly.bean.User;
import com.fly.mapper.UserMapper;
import com.fly.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(String username, String password) {
        return userMapper.login( username,  password);
    }

    @Override
    @Transactional
    public boolean add(User user) {
        return userMapper.add( user);
    }

    @Override
    @Transactional
    public boolean update(User user) {
        return userMapper.update( user) ;
    }

    @Override
    public User getById(Integer uid) {
        return userMapper.getById( uid);
    }

    @Override
    public Integer getCount(String condition) {
        return userMapper.getCount(condition) ;
    }

    @Override
    public List<User> getPageItems(int begin, int pageSize, String condition) {
        return userMapper.getPageItems( begin,  pageSize,  condition);
    }

    @Override
    @Transactional
    public boolean delete(Integer uid) {
        return userMapper.delete(uid);
    }


    @Override
    public Integer getUserByVIP(String vip) {
        return userMapper.getUserByVIP( vip);
    }
}
