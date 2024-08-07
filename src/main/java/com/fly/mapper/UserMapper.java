package com.fly.mapper;

import com.fly.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    User login(@Param("username") String username, @Param("password") String password);

    boolean add(User user);

    boolean update(User user);

    User getById(@Param("uid") Integer uid);


    Integer getCount(@Param("condition")String condition);

    List<User> getPageItems(@Param("begin") int begin, @Param("pageSize")  int pageSize, @Param("condition") String condition);

    boolean delete(@Param("uid")Integer uid);

    Integer getUserByVIP(@Param("vip") String vip);
}
