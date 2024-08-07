package com.fly.service;


import com.fly.bean.Admin;

public interface AdminService {
    Admin login(String username, String password);

    Admin getById(int id);

    boolean updateAdmin(Admin a);
}
