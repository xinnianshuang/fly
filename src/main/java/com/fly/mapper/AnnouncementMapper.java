package com.fly.mapper;

import com.fly.bean.Announcement;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnnouncementMapper {
    List<Announcement> getByMain();

    Announcement getById(@Param("aid") Integer aid);

    Integer getCount();

    List<Announcement> getPageItems(@Param("begin")int begin,@Param("pageSize") int pageSize);

    boolean delete(@Param("aid")Integer aid);

    boolean update(Announcement announcement);

    boolean add(Announcement announcement);
}
