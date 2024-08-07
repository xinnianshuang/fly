package com.fly.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期工具类
 * 1、工具类不能直接new 构造方法私有化
 * 2、工具类方法 调用 类名.方法，所以方法用static修饰
 */
public class DateUtil {

    //1定义
    private static DateFormat dateFormatyyyyMM;
    private static DateFormat dateFormatyyyyMMdd;
    private static DateFormat dateFormatyyyyMMddHHmmss;

    static {//初始化
        dateFormatyyyyMM = new SimpleDateFormat("yyyy-MM");
        dateFormatyyyyMMdd = new SimpleDateFormat("yyyy-MM-dd");
        dateFormatyyyyMMddHHmmss = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    //2工具类构造方法私有化
    /**
     * 工具类构造方法私有化
     */
    private DateUtil() {
    }

    //方法1获取yyyy-MM-dd格式方法
    public static String getDateFormatyyyyMM(Date date) {
        return dateFormatyyyyMM.format(date);
    }

    //方法1获取yyyy-MM-dd格式方法
    public static String getDateFormatyyyyMMdd(Date date) {
        return dateFormatyyyyMMdd.format(date);
    }

    //方法2获取yyyy-MM-dd格式方法
    public static String getDateFormatyyyyMMddHHmmss(Date date) {
        return dateFormatyyyyMMddHHmmss.format(date);
    }

    //方法3其他格式 用户自定义
    public static String getDateStr(Date date, String resource) {
        DateFormat df = new SimpleDateFormat(resource);
        return df.format(date);
    }

    //方法4解析
    public static Date parseDateFormatyyyyMMdd(String dataStr) {
        try {
            return dateFormatyyyyMMdd.parse(dataStr);
        } catch (ParseException e) {
            return new Date();
        }
    }

    public static Date parseDateFormatyyyyMMddHHmmss(String dataStr) {
        try {
            return dateFormatyyyyMMddHHmmss.parse(dataStr);
        } catch (ParseException e) {
            return new Date();
        }
    }

}
