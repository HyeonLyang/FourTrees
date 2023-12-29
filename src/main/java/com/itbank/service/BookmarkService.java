package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BookmarkDAO;
import com.itbank.model.vo.AccountVo;
import com.itbank.model.vo.BookmarkVO;

@Service
public class BookmarkService {
	
	@Autowired private BookmarkDAO dao;
	
	public int getBookmarkCnt(int idx) {
		return dao.getBmkCnt(idx);
	}

	public List<BookmarkVO> getBookmark(AccountVo nick) {		
		return dao.getNickBookmark(nick);
	}

}
