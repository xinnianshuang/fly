package com.fly.controller;

import com.fly.bean.*;
import com.fly.service.*;
import com.fly.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * 公共controller 处理公共/不需要权限访问的接口的controller
 */
@Controller
public class PublicController {

    @Autowired
    private UserService userService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private AnnouncementService announcementService;
    @Autowired
    private FlyService flyService;
    @Autowired
    private MsgService msgService;
    /**
     * 系统启动 访问首页
     * http://localhost:8080/pet_sys/
     * @return
     */
    @RequestMapping({"/","/index"})
    public String index(HttpServletRequest request){

        return "index";
    }

    /**
     * 首页中 iframe main连接
     * <iframe src="${pageContext.request.contextPath}/public/main" name="mark"></iframe>
     * @return
     */
    @RequestMapping("/main")
    public String main(HttpServletRequest request){
        //查询最新的6条公告
        List<Announcement> announcementList = announcementService.getByMain();
        request.setAttribute("announcementList",announcementList);
        //随机查询12个航班///先查询30个 然后随机12个
        List<Fly> flyList = flyService.getByMain();
        if (flyList.size()>=12){//随机12个
            List<Fly> temp = new ArrayList<>();
            for (int i=0;i<12;i++){
                int index = (int) (Math.random()*flyList.size());
                temp.add(flyList.get(index));
                flyList.remove(index);
            }
            flyList = temp;
        }
        request.setAttribute("flyList",flyList);
        //获取预订明天的机票
        Date now = new Date();
        Date dates = new Date(now.getTime()+(1000*60*60*24));
        String date = DateUtil.getDateFormatyyyyMMdd(dates);
        request.setAttribute("date",date);
        //转发到templates/main.jsp 2020-01-02 11:11:11

        return "main";
    }


    @RequestMapping({"/more"})
    public String more(HttpServletRequest request){
        //随机5个航班
        List<Fly> flyList = flyService.getByMain();
        if (flyList.size()>=5){//随机5个
            List<Fly> temp = new ArrayList<>();
            for (int i=0;i<5;i++){
                int index = (int) (Math.random()*flyList.size());
                temp.add(flyList.get(index));
                flyList.remove(index);
            }
            flyList = temp;
        }
        request.setAttribute("flyList",flyList);
        //首页默认获取预订明天的机票
        Date now = new Date();
        Date dates = new Date(now.getTime()+(1000*60*60*24));
        String date = DateUtil.getDateFormatyyyyMMdd(dates);
        request.setAttribute("date",date);
        return "public/list";
    }


    //实验  获取当前 时分
//    String ds = DateUtil.getDateFormatyyyyMMddHHmmss(new Date());
//    System.out.println(ds.substring(11,16));
//    //select * from fly where start_time > '20:29'
    @RequestMapping({"/list"})
    public String list(String date,String start_city,String end_city,HttpServletRequest request){
        String time = null;
        try {
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            //把前端传过来的日期转为时间戳
            Date getDate = df.parse(date);
            Calendar cal = Calendar.getInstance();
            cal.setTime(getDate);
            long get = cal .getTimeInMillis();
            //获取系统当前日期转为时间戳
            cal.setTime(DateUtil.parseDateFormatyyyyMMdd(DateUtil.getDateFormatyyyyMMdd(new Date())));
            long now = cal.getTimeInMillis();
            if (get==now){
                //到这里说明是查询今天的
                date = DateUtil.getDateFormatyyyyMMdd(new Date());
                String ds = DateUtil.getDateFormatyyyyMMddHHmmss(new Date());
                time = ds.substring(11,16);
            }else if(get<now){
                //小于则说明时间选的之前的时间 默认查第二天
                Date two = new Date();
                Date dates = new Date(two.getTime()+(1000*60*60*24));
                date = DateUtil.getDateFormatyyyyMMdd(dates);
            }
            //否则日期是明天之后的 正常操作

        } catch (Exception e) {
            //时间转换异常默认查询明天的
            Date now = new Date();
            Date dates = new Date(now.getTime()+(1000*60*60*24));
            date = DateUtil.getDateFormatyyyyMMdd(dates);
        }
        List<Fly> flyList = flyService.getByCondition(start_city,end_city,time);
        request.setAttribute("flyList",flyList);
        request.setAttribute("date",date);
        request.setAttribute("start_city",start_city);
        request.setAttribute("end_city",end_city);
        return "public/list";
    }

    /**
     * 查看公告详细信息页面
     * @return
     */
    @RequestMapping({"/anDetail"})
    public String anDetail(Integer aid,HttpServletRequest request){
        Announcement announcement = announcementService.getById(aid);
        request.setAttribute("announcement",announcement);
        return "public/an_detail";
    }



    /**
     * 返回意见反馈页面页面
     * @return
     */
    @RequestMapping({"/public/msgHtml"})
    public String msgHtml(){
        return "public/msg_add";
    }

    /**
     * 反馈意见
     * @return
     */
    @RequestMapping({"/public/addMsg"})
    @ResponseBody
    public String addMsg(HttpServletRequest request, Msg msg){
        msg.setDates(DateUtil.getDateFormatyyyyMMddHHmmss(new Date()));
        boolean result = msgService.add(msg);
        String message = "";
        if (result){
            message = "success";
        }
        return message;
    }
    /**
     * 返回登录页面
     * @return
     */
    @RequestMapping({"/loginPage"})
    public String loginPage(){
        return "login";
    }
    /**
     * 返回注册页面
     * @return
     */
    @RequestMapping({"/registerPage"})
    public String registerPage(){
        return "register";
    }

    /**
     * 用户注册
     * @return
     */
    @RequestMapping({"/public/register"})
    // @ResponseBody 表示输出字符串信息到页面
    @ResponseBody
    public void register(User user,HttpServletRequest request,HttpServletResponse response) throws IOException {
        //补齐注册用户其他信息
        user.setStatus("正常");
        user.setAddress("未知");
        user.setIntegral(100);//默认100积分
        user.setVip("白银会员");
        user.setAge(20);//默认20
        boolean result = false;
        try {
            //注册
            result = userService.add(user);
        } catch (Exception e) {

        }
        String message = "";
        if (result){
            message = "success";
        }
        PrintWriter printWriter = response.getWriter();
        printWriter.print(message);
        printWriter.flush();
        printWriter.close();

    }
    /**
     * 用户登录
     * @param username
     * @param password
     * @param request
     * @return
     */
    @RequestMapping("/public/login")
    public void userLogin(String username, String password, HttpServletRequest request,HttpServletResponse response) throws IOException {
        //用户 登录
        User user =  userService.login(username,password);
        String message = "";
        if (user!=null){
            //判断是否冻结
            if ("冻结".equals(user.getStatus())){
                message = "冻结";
            }else {
                //来到这里证明登录成功 并且没有冻结  把用户设置进去session中
                request.getSession().setAttribute("power","user");
                request.getSession().setAttribute("user",user);
                message = "success";
            }
        }
        PrintWriter printWriter = response.getWriter();
        printWriter.print(message);
        printWriter.flush();
        printWriter.close();

    }

    /**
     * 用户/管理 退出
     * @param request
     * @return
     */
    @RequestMapping("/public/logout")
    public String logout(HttpServletRequest request){
        //清空session
        request.getSession().removeAttribute("user");
        request.getSession().removeAttribute("power");
        //退出登录 重定向到首页
        return "redirect:/index";
    }



    /**
     * 点击首页底下的  后台管理 返回管理登录页面
     * @return
     */
    @RequestMapping({"/public/adminLoginPage"})
    public String adminLoginPage(){
        return "admin/login";
    }

    /**
     * 管理登录
     * @param username
     * @param password
     * @param request
     * @return
     */
    @RequestMapping("/public/adminLogin")
    public void adminLogin(String username, String password,String code, HttpServletRequest request,HttpServletResponse response) throws IOException {
        String checkCode = (String) request.getSession().getAttribute("checkCode");
        String message = "";
        //核对校验码
        if (checkCode.equalsIgnoreCase(code)){
//            if ("111".equalsIgnoreCase(code)){
            //管理登录
            Admin admin =  adminService.login(username,password);
            if (admin!=null){
                //来到这里证明登录成功   把用户设置进去session中
                request.getSession().setAttribute("power","admin");
                request.getSession().setAttribute("user",admin);
                message = "success";
            }
        }else {
            //来到这里说明校验码错误
            message = "checkCode";
        }
        PrintWriter printWriter = response.getWriter();
        printWriter.print(message);
        printWriter.flush();
        printWriter.close();

    }

    /**
     * 进入管理员首页
     * @return
     */
    @RequestMapping("/adminIndex")
    public String adminIndex(HttpServletRequest request){
        return "admin/index";
    }
    /**
     * 进入管理员首页main页面
     * @return
     */
    @RequestMapping("/adminIndexMain")
    public String adminIndexMain(HttpServletRequest request){
        return "admin/main";
    }
}
