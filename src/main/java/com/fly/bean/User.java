package com.fly.bean;

import java.io.Serializable;

/**
 * 用户表
 */
public class User implements Serializable {

    private Integer uid;//ID
    private String username;//账号
    private String password;//密码
    private String name;//名字
    private String phone;//电话
    private String sex;//性别
    private Integer age;//年龄
    private String address;//地址
    private String card;//身份证
    private String vip;//VIP  白银会员 黄金会员 白金会员 钻石会员
    private String status;//状态 正常/冻结
    private Integer integral;//积分

    private String marksStar;
    /**
     * 理由后面的字符转换星星
     * @return
     */
    public String getMarksStar() {
        if (this.card!=null &&this.card.length()>=15) {
            return this.card.substring(0, 3) + "***"+this.card.substring(15, this.card.length());
        }
        return this.card;
    }

    public void setMarksStar(String marksStar) {
        this.marksStar = marksStar;
    }

    public User(Integer uid, String username, String password, String name, String phone, String sex, Integer age, String address, String card, String vip, String status, Integer integral) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.sex = sex;
        this.age = age;
        this.address = address;
        this.card = card;
        this.vip = vip;
        this.status = status;
        this.integral = integral;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", sex='" + sex + '\'' +
                ", age='" + age + '\'' +
                ", address='" + address + '\'' +
                ", card='" + card + '\'' +
                ", vip='" + vip + '\'' +
                ", status='" + status + '\'' +
                ", integral=" + integral +
                '}';
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getVip() {
        return vip;
    }

    public void setVip(String vip) {
        this.vip = vip;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public User() {
    }
}
