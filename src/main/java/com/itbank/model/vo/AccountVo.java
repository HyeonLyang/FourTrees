package com.itbank.model.vo;

import java.sql.Date;

/*
  	IDX       NOT NULL NUMBER       
	USERID    NOT NULL VARCHAR2(50) 
	USERPW    NOT NULL VARCHAR2(50) 
	NICK      NOT NULL VARCHAR2(50) 
	EMAIL     NOT NULL VARCHAR2(70) 
	STATUS    NOT NULL NUMBER       
	BIRTH     NOT NULL DATE         
	PHONE     NOT NULL VARCHAR2(20) 
	FOREIGNER NOT NULL VARCHAR2(30) 
	GENDER    NOT NULL VARCHAR2(10) 
	AREA      NOT NULL CLOB         
	JOIN_DATE          DATE
*/
public class AccountVo {
	private int idx, status;
	private String userid, userpw, nick, email;
	private String phone, foreigner, gender, area;
	private Date birth, join_date;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getForeigner() {
		return foreigner;
	}
	public void setForeigner(String foreigner) {
		this.foreigner = foreigner;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}	
}
