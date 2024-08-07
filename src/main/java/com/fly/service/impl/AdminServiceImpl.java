package com.fly.service.impl;


import com.fly.bean.Admin;
import com.fly.mapper.AdminMapper;
import com.fly.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public Admin login(String username, String password) {
        return adminMapper.login(username,password);
    }

    @Override
    public Admin getById(int id) {
        return adminMapper.getById(id);
    }

    @Override
    public boolean updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }
}
