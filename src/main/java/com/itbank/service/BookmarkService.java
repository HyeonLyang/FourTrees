package com.itbank.service;

import java.util.List;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BookmarkDAO;
import com.itbank.model.vo.BookmarkVO;

@Service
public class BookmarkService {
	
	@Autowired private BookmarkDAO dao;
	
	public int getBookmarkCnt(int idx) {
		return dao.getBmkCnt(idx);
	}

	public void addBookmark(int accIdx, int resIdx) {
		// BookmarkVO 객체를 생성하고 필요한 정보를 설정합니다
        BookmarkVO bookmark = new BookmarkVO();
        // 중복이 아닌 경우에만 북마크 추가
        int existingCount = dao.checkBookmarkExists(accIdx, resIdx);
        if (existingCount == 0) {
	        bookmark.setAcc_idx(accIdx);
	        bookmark.setRes_idx(resIdx);
	        // sysdate로 설정
	        bookmark.setMark_date(new java.sql.Date(System.currentTimeMillis()));
	
	        // BookmarkDAO를 통해 데이터베이스에 북마크를 추가합니다.
	        dao.insertBookmark(bookmark);
        }
    }
	
	public List<BookmarkVO> BookResAll() {
        return dao.selectAllWithRestaurantInfo();
    }
	
	
}
