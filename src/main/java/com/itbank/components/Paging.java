package com.itbank.components;

import org.springframework.stereotype.Component;

@Component
public class Paging {
	private int reqPage,totalRestaurant;
	private int perCount = 9, perRestaurant = 10;
	private int totalPage, offset;
	private int section, begin, end;
	private boolean prev, next;
	
	public Paging(int reqPage, int totalRestaurant) {
		this.reqPage = reqPage;
		this.totalRestaurant = totalRestaurant;
		
		offset = (reqPage - 1) * perCount;
		totalPage = totalRestaurant / perCount;
		totalPage += (totalRestaurant % perCount == 0) ? 0 : 1;
		
		section = (reqPage - 1) / perRestaurant;
		begin = section * perRestaurant + 1;
		end = (section + 1) * perRestaurant;
		end = (end > totalPage) ? totalPage : end;
		
		prev = (section != 0);
		next = (end != totalPage);
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
}
