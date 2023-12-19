package com.itbank.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.components.Paging2;
import com.itbank.model.SupportDAO;
import com.itbank.model.vo.NoticeVO;

@Service
public class SupportService {

	@Autowired private SupportDAO dao;

	public Map<String, Object> getNotice(int reqPage, int idx) {
		Paging2 p = new Paging2(reqPage, dao.getTotalNotice(idx), idx);						
		
		List<NoticeVO> list = dao.selectAll(p);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("total", dao.getTotalNotice(idx));
		result.put("list", list);
		result.put("p", p);
		
		return result;
	}
	
}
