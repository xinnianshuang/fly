package com.fly.service;

import com.fly.bean.Orders;
import com.fly.bean.User;

import java.util.List;

public interface OrdersService {
    boolean add(Orders orders);


    Integer getCountByUser(User user);

    List<Orders> getPageItemsByUser(int begin, int pageSize, User user);

    boolean delete(String oid);

    boolean updateStatus(String oid, String status);

    Orders getById(String oid);

    Integer getCount(String condition);

    List<Orders> getPageItems(int begin, int pageSize, String condition);
}
