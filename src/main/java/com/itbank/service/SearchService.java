package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.SearchDAO;
import com.itbank.model.vo.RestaurantVO;

@Service
public class SearchService {

	@Autowired private SearchDAO dao;
	
	public List<RestaurantVO> search(String address, String category) {
	    return dao.searchAll(address, category);
	}

	public List<RestaurantVO> searchHeader(String search) {
		return dao.searchHeader(search);
	}
}
