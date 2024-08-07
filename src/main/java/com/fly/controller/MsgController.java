package com.fly.controller;

import com.fly.bean.Msg;
import com.fly.bean.Page;
import com.fly.bean.User;
import com.fly.service.MsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/MsgController")
public class MsgController {
    @Autowired
    private MsgService msgService;


    /**
     * 管理点击 反馈列表 分页
     */
    @RequestMapping("/list")
    public String list(String pageNoString , String condition, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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

            Page<Msg> page  = new Page<>();
            page.setPageSize(pageSize);
            Integer pageTotalCount = msgService.getCount(condition);
            page.setPageTotalCount(pageTotalCount);
            Integer pageTotal = pageTotalCount / pageSize;
            if (pageTotalCount % pageSize > 0) {
                pageTotal+=1;
            }
            page.setPageTotal(pageTotal);
            page.setPageNo(pageNo);
            int begin = (page.getPageNo() - 1) * pageSize;
            List<Msg> items = msgService.getPageItems(begin,pageSize,condition);
            page.setItems(items);
            req.setAttribute("page", page);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        //转发到src/main/webapp/WEB-INF/templates/admin/msg/msg_list.jsp页面
        return "admin/msg/msg_list";
    }
    /**
     * 管理删除反馈
     */
    @RequestMapping("/delete")
    public String delete(Integer mid, HttpServletRequest request){
        //删除操作
        try {
            boolean result = msgService.delete(mid);
        } catch (Exception e) {
             e.printStackTrace();
        }
        //重定向
        return "redirect:/MsgController/list";
    }

    /**
     * 管理查看反馈详细
     */
    @RequestMapping("/edit")
    public String edit(Integer mid, HttpServletRequest request){
        //根据ID查询
        Msg msg  = msgService.getById(mid);
        request.setAttribute("msg",msg);
        //转发到src/main/webapp/WEB-INF/templates/admin/msg/detail.jsp
        return "admin/msg/detail";
    }
}
