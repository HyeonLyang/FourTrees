package com.itbank.model.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

/*
  	IDX        NOT NULL NUMBER        
	WRITER     NOT NULL VARCHAR2(30)  
	CONTENT             CLOB          
	VISIT_DATE          DATE          
	WRITE_DATE          DATE          
	SCORE               NUMBER        
	GOOD                NUMBER        
	IMG                 VARCHAR2(100) 
*/
public class ReviewVO {
	private int idx, good;
	private double score;
	private String writer, content, img;
	private Date visit_date, write_date;
	private MultipartFile upload;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getVisit_date() {
		return visit_date;
	}
	public void setVisit_date(Date visit_date) {
		this.visit_date = visit_date;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
}
