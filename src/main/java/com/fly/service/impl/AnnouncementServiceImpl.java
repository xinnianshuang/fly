package com.fly.service.impl;

import com.fly.bean.Announcement;
import com.fly.mapper.AnnouncementMapper;
import com.fly.service.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {
    @Autowired
    private AnnouncementMapper announcementMapper;
    @Override
    public List<Announcement> getByMain() {
        return announcementMapper.getByMain();
    }

    @Override
    public Announcement getById(Integer aid) {
        return announcementMapper.getById( aid);
    }

    @Override
    public Integer getCount() {
        return announcementMapper.getCount();
    }

    @Override
    public List<Announcement> getPageItems(int begin, int pageSize) {
        return announcementMapper.getPageItems( begin,  pageSize) ;
    }

    @Override
    @Transactional
    public boolean delete(Integer aid) {
        return announcementMapper.delete(aid);
    }

    @Override
    @Transactional
    public boolean update(Announcement announcement) {
        return announcementMapper.update(announcement);
    }

    @Override
    @Transactional
    public boolean add(Announcement announcement) {
        return announcementMapper.add(announcement);
    }
}
