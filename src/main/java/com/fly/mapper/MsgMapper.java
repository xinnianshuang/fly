package com.fly.mapper;

import com.fly.bean.Msg;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MsgMapper {
    boolean add(Msg msg);

    Integer getCount(@Param("condition") String condition);

    List<Msg> getPageItems(@Param("begin")int begin,@Param("pageSize") int pageSize,@Param("condition") String condition);

    boolean delete(@Param("mid")Integer mid);

    Msg getById(@Param("mid")Integer mid);
}
