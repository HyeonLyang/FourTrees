package com.itbank.model.vo;
/*
IDX	NUMBER
REV_IDX	NUMBER
IMG_PATH	VARCHAR2(200 BYTE)
 */
public class PhotoVO {
	private int idx, rev_idx;
	private String img_path, nick, res_name;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getRev_idx() {
		return rev_idx;
	}
	public void setRev_idx(int rev_idx) {
		this.rev_idx = rev_idx;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	
	
}
