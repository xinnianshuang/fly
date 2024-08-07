package com.fly.service;

import com.fly.bean.Announcement;

import java.util.List;

public interface AnnouncementService {

    List<Announcement> getByMain();

    Announcement getById(Integer aid);

    Integer getCount();

    List<Announcement> getPageItems(int begin, int pageSize);


    boolean delete(Integer aid);

    boolean update(Announcement announcement);

    boolean add(Announcement announcement);
}
