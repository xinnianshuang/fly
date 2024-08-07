package com.fly.mapper;

import com.fly.bean.Orders;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrdersMapper {
    boolean add(Orders orders);

    Integer getCountByUser(@Param("uid") Integer uid);

    List<Orders> getPageItemsByUser(@Param("begin")int begin,@Param("pageSize") int pageSize,@Param("uid") Integer uid);

    boolean delete(@Param("oid")String oid);

    boolean updateStatus(@Param("oid")String oid,@Param("status") String status);

    Orders getById(@Param("oid")String oid);

    Integer getCount(@Param("condition")String condition);

    List<Orders> getPageItems(@Param("begin")int begin, @Param("pageSize")int pageSize, @Param("condition")String condition);
}
