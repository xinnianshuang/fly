package com.fly.mapper;

import com.fly.bean.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminMapper {

    Admin login(@Param("username") String username, @Param("password") String password);

    Admin getById(@Param("id") int id);

    boolean updateAdmin(Admin admin);
}
