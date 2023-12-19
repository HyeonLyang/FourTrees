package com.itbank.components;

import org.springframework.stereotype.Component;

@Component
public class Paging2 {
	private int reqPage,totalRestaurant;
	private int perCount = 10;
	private int totalPage, offset, res_idx;
	private int section, begin, end;
	private boolean prev, next;
	private int totalNotice;
	private int idx;
	


	public Paging2() {}

	public Paging2(int reqPage, int totalNotice, int idx) {
		this.reqPage = reqPage;
		this.totalNotice = totalNotice;
		this.idx = idx;
				
		perCount = 5;
		offset = (reqPage - 1) * perCount;
		totalPage = totalNotice / perCount;
		totalPage += (totalNotice % perCount == 0) ? 0 : 1;
		
		section = (reqPage - 1) / perCount;
		begin = section * perCount + 1;
		end = (section + 1) * perCount;
		end = (end > totalPage) ? totalPage : end;
		
		prev = (section != 0);
		next = (end != totalPage);
	}

	public int getTotalNotice() {
		return totalNotice;
	}

	public void setTotalNotice(int totalNotice) {
		this.totalNotice = totalNotice;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getReqPage() {
		return reqPage;
	}

	public void setReqPage(int reqPage) {
		this.reqPage = reqPage;
	}

	public int getTotalRestaurant() {
		return totalRestaurant;
	}

	public void setTotalRestaurant(int totalRestaurant) {
		this.totalRestaurant = totalRestaurant;
	}

	public int getPerCount() {
		return perCount;
	}

	public void setPerCount(int perCount) {
		this.perCount = perCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getSection() {
		return section;
	}

	public void setSection(int section) {
		this.section = section;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public boolean getPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean getNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getRes_idx() {
		return res_idx;
	}

	public void setRes_idx(int res_idx) {
		this.res_idx = res_idx;
	}		
}
