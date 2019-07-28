package cn.demo.pojo;

import java.util.Date;

/**
 * 学生pojo类
 */
public class Student {

  private Integer id;//学生编号
  private String sname;//学生姓名
  private Date birthday;//学生生日
  private String gender;//学生性别
  private String telephone;//联系方式
  private String email;//学生邮箱
  private Integer classid;//班级编号
  private String cname;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getSname() {
    return sname;
  }

  public void setSname(String sname) {
    this.sname = sname;
  }


  public Date getBirthday() {
    return birthday;
  }

  public void setBirthday(Date birthday) {
    this.birthday = birthday;
  }


  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }


  public String getTelephone() {
    return telephone;
  }

  public void setTelephone(String telephone) {
    this.telephone = telephone;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public Integer getClassid() {
    return classid;
  }

  public void setClassid(Integer classid) {
    this.classid = classid;
  }

  public String getCname() {
    return cname;
  }

  public void setCname(String cname) {
    this.cname = cname;
  }
}