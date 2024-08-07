package com.fly.controller;


import com.fly.bean.Admin;
import com.fly.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/AdminController")
public class AdminController {
    @Autowired
    private AdminService adminService;

    /**
     * 管理点击 个人信息
     * @param request
     * @return
     */
    @RequestMapping("/info")
    public String myInfoJsp( HttpServletRequest request){
        //转发到src/main/webapp/WEB-INF/templates/admin/admin/info.jsp页面
        return "admin/admin/info";
    }

    /**
     * 管理更新个人信息
     * @param request
     * @return
     */
    @RequestMapping("/updateInfo")
    public String updateInfo(Admin a, HttpServletRequest request){
        //更新
        boolean b = adminService.updateAdmin(a);
        String message = "";
        if (b){
            message = "个人信更新成功";
        }else {
            message = "个人信更新失败";
        }
        //获取最新的管理员信息
        Admin admin = adminService.getById(a.getId());
        //设置进去session
        request.getSession().setAttribute("user",admin);
        request.setAttribute("message",message);
        //转发到src/main/webapp/WEB-INF/templates/admin/admin/info.jsp页面
        return "admin/admin/info";
    }
}
