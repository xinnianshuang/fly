package com.fly.bean;

import java.io.Serializable;

/**
 * 航班表
 */
public class Fly implements Serializable {

    private Integer fid;//航班ID
    private String fly_name;//所属公司 CH航空
    private String fly_card;// 航班号 CH 7267
    private String type;//机型 波音789/空客333
    private String start_city;//出发城市
    private String end_city;//到达城市
    private String start_address;//出发地点
    private String end_address;//到达地点
    private String start_time;//出发时间
    private String end_time;//到达时间
    private String duration;//时长
    private Integer business_old;//公务舱原价
    private Integer business_new;//公务舱现价
    private Integer economy_old;//经济舱原价
    private Integer economy_new;//经济舱现在
    private String eat;//无餐食 点心 早餐 午餐 晚餐
    private String fly_status;//状态：启用/关闭

    @Override
    public String toString() {
        return "Fly{" +
                "fid=" + fid +
                ", fly_name='" + fly_name + '\'' +
                ", fly_card='" + fly_card + '\'' +
                ", type='" + type + '\'' +
                ", start_city='" + start_city + '\'' +
                ", end_city='" + end_city + '\'' +
                ", start_address='" + start_address + '\'' +
                ", end_address='" + end_address + '\'' +
                ", start_time='" + start_time + '\'' +
                ", end_time='" + end_time + '\'' +
                ", duration='" + duration + '\'' +
                ", business_old=" + business_old +
                ", business_new=" + business_new +
                ", economy_old=" + economy_old +
                ", economy_new=" + economy_new +
                ", eat='" + eat + '\'' +
                ", fly_status='" + fly_status + '\'' +
                '}';
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getFly_name() {
        return fly_name;
    }

    public void setFly_name(String fly_name) {
        this.fly_name = fly_name;
    }

    public String getFly_card() {
        return fly_card;
    }

    public void setFly_card(String fly_card) {
        this.fly_card = fly_card;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStart_city() {
        return start_city;
    }

    public void setStart_city(String start_city) {
        this.start_city = start_city;
    }

    public String getEnd_city() {
        return end_city;
    }

    public void setEnd_city(String end_city) {
        this.end_city = end_city;
    }

    public String getStart_address() {
        return start_address;
    }

    public void setStart_address(String start_address) {
        this.start_address = start_address;
    }

    public String getEnd_address() {
        return end_address;
    }

    public void setEnd_address(String end_address) {
        this.end_address = end_address;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public Integer getBusiness_old() {
        return business_old;
    }

    public void setBusiness_old(Integer business_old) {
        this.business_old = business_old;
    }

    public Integer getBusiness_new() {
        return business_new;
    }

    public void setBusiness_new(Integer business_new) {
        this.business_new = business_new;
    }

    public Integer getEconomy_old() {
        return economy_old;
    }

    public void setEconomy_old(Integer economy_old) {
        this.economy_old = economy_old;
    }

    public Integer getEconomy_new() {
        return economy_new;
    }

    public void setEconomy_new(Integer economy_new) {
        this.economy_new = economy_new;
    }

    public String getEat() {
        return eat;
    }

    public void setEat(String eat) {
        this.eat = eat;
    }

    public String getFly_status() {
        return fly_status;
    }

    public void setFly_status(String fly_status) {
        this.fly_status = fly_status;
    }

    public Fly(Integer fid, String fly_name, String fly_card, String type, String start_city, String end_city, String start_address, String end_address, String start_time, String end_time, String duration, Integer business_old, Integer business_new, Integer economy_old, Integer economy_new, String eat, String fly_status) {
        this.fid = fid;
        this.fly_name = fly_name;
        this.fly_card = fly_card;
        this.type = type;
        this.start_city = start_city;
        this.end_city = end_city;
        this.start_address = start_address;
        this.end_address = end_address;
        this.start_time = start_time;
        this.end_time = end_time;
        this.duration = duration;
        this.business_old = business_old;
        this.business_new = business_new;
        this.economy_old = economy_old;
        this.economy_new = economy_new;
        this.eat = eat;
        this.fly_status = fly_status;
    }

    public Fly() {
    }
}
