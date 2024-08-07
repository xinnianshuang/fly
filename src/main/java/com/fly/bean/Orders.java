package com.fly.bean;

import java.io.Serializable;

/**
 * 订单表
 */
public class Orders implements Serializable {
    private String oid;//订单ID
    private String oname;//乘机人
    private String idcard;//身份证
    private String ophone;//电话
    private String nationality;//国籍
    private String visa;//签证国籍
    private Integer price;//订单价格
    private String types;//公务舱/经济舱
    private String dates;//下单日期
    private String ostatus;//订单状态 已预订 已出票 已退订
    private String start_date;//开始时间
    private String end_date;//到达时间
    private User user;//所属用户
    private Fly fly;//所属航班

    @Override
    public String toString() {
        return "Orders{" +
                "oid='" + oid + '\'' +
                ", oname='" + oname + '\'' +
                ", idcard='" + idcard + '\'' +
                ", ophone='" + ophone + '\'' +
                ", nationality='" + nationality + '\'' +
                ", visa='" + visa + '\'' +
                ", price=" + price +
                ", types='" + types + '\'' +
                ", dates='" + dates + '\'' +
                ", ostatus='" + ostatus + '\'' +
                ", start_date='" + start_date + '\'' +
                ", end_date='" + end_date + '\'' +
                ", user=" + user +
                ", fly=" + fly +
                '}';
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getOphone() {
        return ophone;
    }

    public void setOphone(String ophone) {
        this.ophone = ophone;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getVisa() {
        return visa;
    }

    public void setVisa(String visa) {
        this.visa = visa;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types;
    }

    public String getDates() {
        return dates;
    }

    public void setDates(String dates) {
        this.dates = dates;
    }

    public String getOstatus() {
        return ostatus;
    }

    public void setOstatus(String ostatus) {
        this.ostatus = ostatus;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Fly getFly() {
        return fly;
    }

    public void setFly(Fly fly) {
        this.fly = fly;
    }

    public Orders(String oid, String oname, String idcard, String ophone, String nationality, String visa, Integer price, String types, String dates, String ostatus, String start_date, String end_date, User user, Fly fly) {
        this.oid = oid;
        this.oname = oname;
        this.idcard = idcard;
        this.ophone = ophone;
        this.nationality = nationality;
        this.visa = visa;
        this.price = price;
        this.types = types;
        this.dates = dates;
        this.ostatus = ostatus;
        this.start_date = start_date;
        this.end_date = end_date;
        this.user = user;
        this.fly = fly;
    }

    public Orders() {
    }
}
