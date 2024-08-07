package com.fly.bean;

import java.io.Serializable;

/**
 * 公告表
 */
public class Announcement implements Serializable {

    private Integer aid;//公告ID
    private String title;//公告标题
    private String mark;//公告内容
    private String dates;//发布日期

    private String marksStar;
    /**
     * 内容后面的字符转换星星
     * @return
     */
    public String getMarksStar() {
        if (this.mark!=null &&this.mark.length()>=5) {
            return this.mark.substring(0, 5) + "...";
        }
        return this.mark;
    }

    @Override
    public String toString() {
        return "Announcement{" +
                "aid=" + aid +
                ", title='" + title + '\'' +
                ", mark='" + mark + '\'' +
                ", dates='" + dates + '\'' +
                '}';
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getDates() {
        return dates;
    }

    public void setDates(String dates) {
        this.dates = dates;
    }

    public Announcement(Integer aid, String title, String mark, String dates) {
        this.aid = aid;
        this.title = title;
        this.mark = mark;
        this.dates = dates;
    }

    public Announcement() {
    }
}
