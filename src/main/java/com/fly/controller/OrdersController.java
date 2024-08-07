package com.fly.controller;

import com.fly.bean.*;
import com.fly.service.OrdersService;
import com.fly.service.UserService;
import com.fly.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/OrdersController")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;
    @Autowired
    private UserService userService;


    @RequestMapping({"/createOrders"})
    @ResponseBody
    public String createOrders(Orders orders,Integer fid,String date,HttpServletRequest request){
        User user = (User)request.getSession().getAttribute("user");
        Fly fly = new Fly();
        fly.setFid(fid);
        orders.setDates(DateUtil.getDateFormatyyyyMMddHHmmss(new Date()));
        orders.setUser(user);
        orders.setFly(fly);
        String oid = System.currentTimeMillis()+""+user.getUid();
        orders.setOid(oid);
        orders.setOstatus("已预订");
        orders.setStart_date(date);
        orders.setEnd_date(date);
        boolean result = ordersService.add(orders);
        String message = "";
        if (result){
            //增加用户积分
            user.setIntegral(user.getIntegral()+ orders.getPrice());
            //更新session
            boolean b = userService.update(user);
            request.getSession().setAttribute("user",user);
            message = "success";
        }
        return message;
    }
    @RequestMapping({"/three"})
    public String three(Orders orders,Integer fid,HttpServletRequest request){
        return "user/three";
    }

    @RequestMapping({"/userList"})
    public String userList(String pageNoString,HttpServletRequest request){
        User user = (User)request.getSession().getAttribute("user");
        //以下是分页
        try{
        int pageNo = 1;
        if (pageNoString!=null&&!"".equals(pageNoString)){
            try {
                pageNo = Integer.parseInt(pageNoString);
            } catch (NumberFormatException e) {
                pageNo = 1;
            }
        }
        int pageSize = Page.PAGE_SIZE;
        Page<Orders> page  = new Page<>();
        page.setPageSize(pageSize);
        Integer pageTotalCount = ordersService.getCountByUser(user);
        page.setPageTotalCount(pageTotalCount);
        Integer pageTotal = pageTotalCount / pageSize;
        if (pageTotalCount % pageSize > 0) {
            pageTotal+=1;
        }
        page.setPageTotal(pageTotal);
        page.setPageNo(pageNo);
        int begin = (page.getPageNo() - 1) * pageSize;
        List<Orders> items = ordersService.getPageItemsByUser(begin,pageSize,user);
        page.setItems(items);
        //把分页数据 和相关分页信息设置到request域
            request.setAttribute("page", page);
    } catch (Exception e) {
        // e.printStackTrace();
    }
        return "user/orders/orders_list";
    }

    @RequestMapping({"/userDelete"})
    public String userDelete(String oid,HttpServletRequest request){
        boolean result = ordersService.delete(oid);
        return "redirect:/OrdersController/userList";
    }

    @RequestMapping({"/userUpdateStatus"})
    public String userUpdateStatus(String status,String oid,HttpServletRequest request){
        boolean result = ordersService.updateStatus(oid,status);
        if (result&&"已退订".equals(status)){
            //减少用户积分
            Orders orders = ordersService.getById(oid);

            User user = (User)request.getSession().getAttribute("user");
            //减少用户积分
            user.setIntegral(user.getIntegral()- orders.getPrice());
            //更新session
            boolean b = userService.update(user);
            request.getSession().setAttribute("user",user);
        }
        return "redirect:/OrdersController/userList";
    }

    /**
     * 管理点击 订单列表 分页
     */
    @RequestMapping("/list")
    public String list( String pageNoString ,String condition,HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            //判断是否有输入条件
            if (condition==null||"".equals(condition)){
                condition =null;
            }else {
                //有输入则回显数据
                req.setAttribute("condition",condition);
                //模糊查询 前后+%号
                condition = "%"+condition+"%";
            }
            //下面是分页的固定代码
            int pageNo = 1;
            if (pageNoString!=null&&!"".equals(pageNoString)){
                try {
                    pageNo = Integer.parseInt(pageNoString);
                } catch (NumberFormatException e) {
                    pageNo = 1;
                }
            }
            int pageSize = Page.PAGE_SIZE;

            Page<Orders> page  = new Page<>();
            page.setPageSize(pageSize);
            Integer pageTotalCount = ordersService.getCount(condition);
            page.setPageTotalCount(pageTotalCount);
            Integer pageTotal = pageTotalCount / pageSize;
            if (pageTotalCount % pageSize > 0) {
                pageTotal+=1;
            }
            page.setPageTotal(pageTotal);
            page.setPageNo(pageNo);
            int begin = (page.getPageNo() - 1) * pageSize;
            List<Orders> items = ordersService.getPageItems(begin,pageSize,condition);
            page.setItems(items);
            req.setAttribute("page", page);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        //转发到src/main/webapp/WEB-INF/templates/admin/orders/orders_list.jsp页面
        return "admin/orders/orders_list";
    }
    /**
     * 管理删除订单
     */
    @RequestMapping("/delete")
    public String delete(String oid, HttpServletRequest request){
        //删除操作
        try {
            boolean result = ordersService.delete(oid);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        //重定向
        return "redirect:/OrdersController/list";
    }

    /**
     * 管理退订订单
     */
    @RequestMapping("/cancellation")
    public String cancellation(String oid, HttpServletRequest request){
        //删除操作
        try {
            boolean result = ordersService.updateStatus(oid,"已退订");
            if (result){
                //减少用户积分
                Orders orders = ordersService.getById(oid);
                User user = orders.getUser();
                //减少用户积分
                user.setIntegral(user.getIntegral()- orders.getPrice());
                userService.update(user);
            }
        } catch (Exception e) {
             e.printStackTrace();
        }
        //重定向
        return "redirect:/OrdersController/list";
    }

    /**
     * 管理出票订单
     */
    @RequestMapping("/ticket")
    public String ticket(String oid, HttpServletRequest request){
        //删除操作
        try {
            boolean result = ordersService.updateStatus(oid,"已出票");

        } catch (Exception e) {
            e.printStackTrace();
        }
        //重定向
        return "redirect:/OrdersController/list";
    }
}
