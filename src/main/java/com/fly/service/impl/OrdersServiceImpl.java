package com.fly.service.impl;

import com.fly.bean.Orders;
import com.fly.bean.User;
import com.fly.mapper.OrdersMapper;
import com.fly.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersMapper ordersMapper;

    @Override
    public boolean add(Orders orders) {
        return ordersMapper.add(orders);
    }

    @Override
    public Integer getCountByUser(User user) {
        return ordersMapper.getCountByUser(user.getUid());
    }

    @Override
    public List<Orders> getPageItemsByUser(int begin, int pageSize, User user) {
        return ordersMapper.getPageItemsByUser( begin,  pageSize,  user.getUid());
    }

    @Override
    @Transactional
    public boolean delete(String oid) {
        return ordersMapper.delete( oid);
    }

    @Override
    @Transactional
    public boolean updateStatus(String oid, String status) {
        return ordersMapper.updateStatus( oid,  status);
    }

    @Override
    public Orders getById(String oid) {
        return ordersMapper. getById( oid) ;
    }

    @Override
    public Integer getCount(String condition) {
        return ordersMapper.getCount( condition) ;
    }

    @Override
    public List<Orders> getPageItems(int begin, int pageSize, String condition) {
        return ordersMapper.getPageItems( begin,  pageSize,  condition) ;
    }


}
