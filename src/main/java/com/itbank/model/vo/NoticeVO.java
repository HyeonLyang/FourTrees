package com.itbank.model.vo;

import java.sql.Date;

/*	========== notice 테이블 ========
	idx     	number          default notice_idx.nextval,
    title   	varchar2(50)    not null,
    contents    clob        	not null,
    write_date  date        	default sysdate,
    face    	clob            default null
*/

public class NoticeVO {
	int idx;
	Date write_date;
	String title, contents, face;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	
	
	
}
