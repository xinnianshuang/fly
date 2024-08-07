package com.fly.controller;

import com.fly.bean.Fly;
import com.fly.bean.Page;
import com.fly.bean.User;
import com.fly.service.FlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/FlyController")
public class FlyController {
    @Autowired
    private FlyService flyService;

    //fid=${o.fid}&space=公务舱&price=${o.economy_new}&date=${requestScope.date}  立即预订
    @RequestMapping("/one")
    public String one(Integer fid, String space, Integer price, String date, HttpServletRequest request) {
        Fly fly = flyService.getById(fid);
        request.setAttribute("fly", fly);
        request.setAttribute("space", space);
        request.setAttribute("price", price);
        request.setAttribute("date", date);
        return "user/one";
    }

    //    fid=${requestScope.fly.fid}&space=${requestScope.space}&price=${requestScope.fly.economy_new}&date=${requestScope.date}
    @RequestMapping("/two")
    public String two(Integer fid, String space, Integer price, String date, HttpServletRequest request) {
        Fly fly = flyService.getById(fid);
        request.setAttribute("fly", fly);
        request.setAttribute("space", space);
        request.setAttribute("price", price);
        request.setAttribute("date", date);
        return "user/two";
    }

    /**
     * 管理点击 航班列表 分页
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
            Integer pageTotalCount = flyService.getCount(condition);
            page.setPageTotalCount(pageTotalCount);
            Integer pageTotal = pageTotalCount / pageSize;
            if (pageTotalCount % pageSize > 0) {
                pageTotal+=1;
            }
            page.setPageTotal(pageTotal);
            page.setPageNo(pageNo);
            int begin = (page.getPageNo() - 1) * pageSize;
            List<User> items = flyService.getPageItems(begin,pageSize,condition);
            page.setItems(items);
            req.setAttribute("page", page);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        //转发到src/main/webapp/WEB-INF/templates/admin/fly/fly_list.jsp页面
        return "admin/fly/fly_list";
    }

    /**
     * 管理编辑航班
     */
    @RequestMapping("/edit")
    public String edit(Integer fid, HttpServletRequest request){
        //根据ID查询
        Fly fly  = flyService.getById(fid);
        request.setAttribute("fly",fly);
        //转发到src/main/webapp/WEB-INF/templates/admin/fly/fly_update.jsp
        return "admin/fly/fly_update";
    }
    /**
     * 管理更新航班
     */
    @RequestMapping("/update")
    public String update(Fly fly, HttpServletRequest request){
        //更新操作
        boolean result  = flyService.update(fly);
        //重定向
        return "redirect:/FlyController/list";
    }

    /**
     * 管理新增航班页面
     */
    @RequestMapping("/html")
    public String html( HttpServletRequest request){
        return "admin/fly/fly_add";
    }

    /**
     * 管理新增航班
     */
    @RequestMapping("/add")
    public String add(Fly fly, HttpServletRequest request){
        //更新操作
        boolean result  = flyService.add(fly);
        //重定向
        return "redirect:/FlyController/list";
    }
    /**
     * 管理删除航班，有关联关系的数据是删除不掉的 可以软删除 例如一般的手段就是 关闭 不启用
     */
    @RequestMapping("/delete")
    public String delete(Integer fid, HttpServletRequest request){
        //删除操作
        try {
            boolean result = flyService.delete(fid);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        //重定向
        return "redirect:/FlyController/list";
    }
}
