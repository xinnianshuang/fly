package com.fly.bean;

import java.io.Serializable;

/**
 * 意见反馈表扬
 */
public class Msg implements Serializable {

  private Integer mid;//ID
  private String name;//反馈人
  private String phone;//联系电话
  private String num;//航班号
  private String mark;//内容
  private String times;//乘机时间
  private String dates;//反馈日期



  private String marksStar;
  /**
   * 理由后面的字符转换星星
   * @return
   */
  public String getMarksStar() {
    if (this.mark!=null &&this.mark.length()>=15) {
      return this.mark.substring(0, 3) + "***"+this.mark.substring(15, this.mark.length());
    }
    return this.mark;
  }

  public void setMarksStar(String marksStar) {
    this.marksStar = marksStar;
  }

  @Override
  public String toString() {
    return "Msg{" +
            "mid=" + mid +
            ", name='" + name + '\'' +
            ", phone='" + phone + '\'' +
            ", num='" + num + '\'' +
            ", mark='" + mark + '\'' +
            ", times='" + times + '\'' +
            ", dates='" + dates + '\'' +
            '}';
  }

  public String getTimes() {
    return times;
  }

  public void setTimes(String times) {
    this.times = times;
  }

  public Integer getMid() {
    return mid;
  }

  public void setMid(Integer mid) {
    this.mid = mid;
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

  public String getNum() {
    return num;
  }

  public void setNum(String num) {
    this.num = num;
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

  public Msg(Integer mid, String name, String phone, String num, String mark, String times, String dates) {
    this.mid = mid;
    this.name = name;
    this.phone = phone;
    this.num = num;
    this.mark = mark;
    this.times = times;
    this.dates = dates;
  }

  public Msg() {
  }
}
