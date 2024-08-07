package com.fly.mapper;

import com.fly.bean.Fly;
import com.fly.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FlyMapper {
    List<Fly> getByMain();

    List<Fly> getByCondition(@Param("start_city") String start_city, @Param("end_city")String end_city,@Param("time") String time);

    Fly getById(@Param("fid")Integer fid);

    Integer getCount(@Param("condition")String condition);

    List<User> getPageItems(@Param("begin")int begin,@Param("pageSize") int pageSize, @Param("condition")String condition);

    boolean update(Fly fly);

    boolean add(Fly fly);

    boolean delete(@Param("fid")Integer fid);
}
