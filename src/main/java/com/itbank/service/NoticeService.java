package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.NoticeDAO;
import com.itbank.model.RestaurantDAO;
import com.itbank.model.vo.NoticeVO;
import com.itbank.model.vo.RestaurantVO;

@Service
public class NoticeService {

	@Autowired private NoticeDAO dao;
	
	public List<NoticeVO> getNotices() {
		
		return dao.selectAll();
	}

	
}
