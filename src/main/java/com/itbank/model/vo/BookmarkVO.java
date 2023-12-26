package com.itbank.model.vo;
/*
IDX	NUMBER
ACC_IDX	NUMBER
RES_IDX	NUMBER
MARK_DATE	DATE
*/

import java.sql.Date;

public class BookmarkVO {
	
	private int idx, acc_idx, res_idx;
	private Date mark_date;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getAcc_idx() {
		return acc_idx;
	}
	public void setAcc_idx(int acc_idx) {
		this.acc_idx = acc_idx;
	}
	public int getRes_idx() {
		return res_idx;
	}
	public void setRes_idx(int res_idx) {
		this.res_idx = res_idx;
	}
	public Date getMark_date() {
		return mark_date;
	}
	public void setMark_date(Date mark_date) {
		this.mark_date = mark_date;
	}
	
	
	
}
