package com.fly.controller;

import com.fly.bean.Announcement;
import com.fly.bean.Page;
import com.fly.service.AdminService;
import com.fly.service.AnnouncementService;
import com.fly.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/AnnouncementController")
public class AnnouncementController {
    @Autowired
    private AnnouncementService announcementService;

    /**
     * 管理点击 公告列表 分页
     */
    @RequestMapping("/list")
    public String list(String pageNoString , String condition, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
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

            Page<Announcement> page  = new Page<>();
            page.setPageSize(pageSize);
            Integer pageTotalCount = announcementService.getCount();
            page.setPageTotalCount(pageTotalCount);
            Integer pageTotal = pageTotalCount / pageSize;
            if (pageTotalCount % pageSize > 0) {
                pageTotal+=1;
            }
            page.setPageTotal(pageTotal);
            page.setPageNo(pageNo);
            int begin = (page.getPageNo() - 1) * pageSize;
            List<Announcement> items = announcementService.getPageItems(begin,pageSize);
            page.setItems(items);
            req.setAttribute("page", page);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return "admin/an/an_list";
    }
    /**
     * 管理新增-返回新增页面
     */
    @RequestMapping("/html")
    public String html(HttpServletRequest request){
        //转发到新增知识输入表单页面
        return "admin/an/an_add";
    }


    //管理新增
    @RequestMapping("/add")
    public String add(Announcement announcement, HttpServletRequest request) {
        announcement.setDates(DateUtil.getDateFormatyyyyMMddHHmmss(new Date()));
        //更新操作
        boolean result = announcementService.add(announcement);
        //重定向到列表页面
        return "redirect:/AnnouncementController/list";
    }

    /**
     * 管理删除
     */
    @RequestMapping("/delete")
    public String delete(Integer aid, HttpServletRequest request){
        //删除操作
        boolean result = announcementService.delete(aid);
        //重定向
        return "redirect:/AnnouncementController/list";
    }
    /**
     * 管理编辑
     */
    @RequestMapping("/edit")
    public String edit(Integer aid, HttpServletRequest request){
        //根据id查询宠物
        Announcement announcement = announcementService.getById(aid);
        //设置进去request域
        request.setAttribute("announcement",announcement);
        //转发到src/main/webapp/WEB-INF/templates/admin/announcement/announcement_update.jsp
        return "admin/an/an_update";
    }

    //管理更新
    @RequestMapping("/update")
    public String update(Announcement announcement, HttpServletRequest request) {
        //更新操作
        boolean result = announcementService.update(announcement);
        //重定向到列表页面
        return "redirect:/AnnouncementController/list";
    }
}
