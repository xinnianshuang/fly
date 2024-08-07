package com.fly.controller;

import com.fly.bean.Page;
import com.fly.bean.User;
import com.fly.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/UserController")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 用户点击 个人信息
     */
    @RequestMapping("/info")
    public String myInfoJsp(User user, HttpServletRequest request){
        //转发到src/main/webapp/WEB-INF/templates/user/user/info.jsp页面
        return "/user/user/info";
    }

    /**
     * 用户更新个人信息
     */
    @RequestMapping("/updateInfo")
    public String updateInfo(User u,HttpServletRequest request){
        //更新
        boolean b = userService.update(u);
        String message = "";
        if (b){
            message = "个人信更新成功";
        }else {
            message = "个人信更新失败";
        }
        //获取最新的用户信息
        User user = userService.getById(u.getUid());
        //设置进去session
        request.getSession().setAttribute("user",user);
        request.setAttribute("message",message);
        //转发到src/main/webapp/WEB-INF/templates/user/user/info.jsp页面
        return "/user/user/info";
    }

    /**
     * 管理点击 用户列表 分页
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

            Page<User> page  = new Page<>();
            page.setPageSize(pageSize);
            Integer pageTotalCount = userService.getCount(condition);
            page.setPageTotalCount(pageTotalCount);
            Integer pageTotal = pageTotalCount / pageSize;
            if (pageTotalCount % pageSize > 0) {
                pageTotal+=1;
            }
            page.setPageTotal(pageTotal);
            page.setPageNo(pageNo);
            int begin = (page.getPageNo() - 1) * pageSize;
            List<User> items = userService.getPageItems(begin,pageSize,condition);
            page.setItems(items);
            req.setAttribute("page", page);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        //转发到src/main/webapp/WEB-INF/templates/admin/user/user_list.jsp页面
        return "admin/user/user_list";
    }

    /**
     * 管理删除用户，有关联关系的数据是删除不掉的 可以软删除 例如一般的手段就是 冻结账号
     */
    @RequestMapping("/delete")
    public String delete(Integer uid, HttpServletRequest request){
        //删除操作
        try {
            boolean result = userService.delete(uid);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        //重定向
        return "redirect:/UserController/list";
    }
    /**
     * 管理编辑用户
     */
    @RequestMapping("/edit")
    public String edit(Integer uid, HttpServletRequest request){
        //根据ID查询
        User user  = userService.getById(uid);
        request.setAttribute("user",user);
        //转发到src/main/webapp/WEB-INF/templates/admin/user/user_update.jsp
        return "admin/user/user_update";
    }
    /**
     * 管理更新用户
     */
    @RequestMapping("/update")
    public String update(User user, HttpServletRequest request){
        //更新操作
        boolean result  = userService.update(user);
        //重定向
        return "redirect:/UserController/list";
    }


    @RequestMapping("/echartsHtml")
    public String echartsHtml(HttpServletRequest request){
        return "admin/echarts/echarts";
    }

    @RequestMapping("/echarts")
    @ResponseBody
    public String echarts(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //白银会员 黄金会员 白金会员 钻石会员
        String vip = "白银会员";
        int h = userService.getUserByVIP(vip);
        vip = "黄金会员";
        int b = userService.getUserByVIP(vip);
        vip = "白金会员";
        int j = userService.getUserByVIP(vip);
        vip = "钻石会员";
        int p = userService.getUserByVIP(vip);
        return h+","+b+","+j+","+p;
    }
}
