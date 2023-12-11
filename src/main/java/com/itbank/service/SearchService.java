package com.itbank.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.components.Paging;
import com.itbank.model.SearchDAO;
import com.itbank.model.vo.RestaurantVO;
import com.itbank.model.vo.ReviewVO;

@Service
public class SearchService {

	@Autowired private SearchDAO dao;
	
	public List<RestaurantVO> search(String address, String category) {
	    return dao.searchAll(address, category);
	}

	public List<RestaurantVO> searchHeader(String search) {
		return dao.searchHeader(search);
	}
//
//	public Map<String, Object> search(int reqPage) {
//		Paging p = new Paging(reqPage, dao.getTotalSearch());
//		
//		List<RestaurantVO> list = dao.searchPage(p);
//		
//		Map<String, Object> result = new HashMap<>();
//
//		result.put("list", list);
//		result.put("p", p);
//		
//		return result;
//	}
}
