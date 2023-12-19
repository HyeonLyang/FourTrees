package com.itbank.components;

import org.springframework.stereotype.Component;

@Component
public class Paging {
	private int reqPage,totalRestaurant;
	private int perCount = 10;
	private int totalPage, offset, res_idx;
	private int section, begin, end;
	private boolean prev, next;
	
	private String address, category;

	public Paging() {
		
	}

	public Paging(int reqPage, int totalRestaurant) {
		this.reqPage = reqPage;
		this.totalRestaurant = totalRestaurant;
		
		offset = (reqPage - 1) * perCount;
		totalPage = totalRestaurant / perCount;
		totalPage += (totalRestaurant % perCount == 0) ? 0 : 1;
		
		section = (reqPage - 1) / perCount;
		begin = section * perCount + 1;
		end = (section + 1) * perCount;
		end = (end > totalPage) ? totalPage : end;
		
		prev = (section != 0);
		next = (end != totalPage);
	}
	public Paging(int reqPage,int totalRestaurant,int res_idx) {
		this.reqPage = reqPage;
		this.totalRestaurant = totalRestaurant;
		this.res_idx = res_idx;
		
		offset = (reqPage - 1) * perCount;
		totalPage = totalRestaurant / perCount;
		totalPage += (totalRestaurant % perCount == 0) ? 0 : 1;
		
		section = (reqPage - 1) / perCount;
		begin = section * perCount + 1;
		end = (section + 1) * perCount;
		end = (end > totalPage) ? totalPage : end;
		
		prev = (section != 0);
		next = (end != totalPage);
	}
	public Paging(int reqPage, int totalRestaurant, String address, String category) {
		this.reqPage = reqPage;
		this.totalRestaurant = totalRestaurant;
		this.address = address;
		this.category = category;
		perCount = 5;
		offset = (reqPage - 1) * perCount;
		totalPage = totalRestaurant / perCount;
		totalPage += (totalRestaurant % perCount == 0) ? 0 : 1;
		
		section = (reqPage - 1) / perCount;
		begin = section * perCount + 1;
		end = (section + 1) * perCount;
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

	public int getRes_idx() {
		return res_idx;
	}

	public void setRes_idx(int res_idx) {
		this.res_idx = res_idx;
	}		

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
}
