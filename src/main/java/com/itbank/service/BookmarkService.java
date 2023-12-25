package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BookmarkDAO;

@Service
public class BookmarkService {
	
	@Autowired private BookmarkDAO dao;
	
	public int getBookmarkCnt(int idx) {
		return dao.getBmkCnt(idx);
	}

}
