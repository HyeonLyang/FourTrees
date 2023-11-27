package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.SearchDAO;
import com.itbank.model.vo.RestaurantVO;

@Service
public class SearchService {

	@Autowired private SearchDAO dao;
	
	public List<RestaurantVO> search(String address) {
//		 System.out.println("SearchService - search method called with address: " + address);
	        return dao.searchAll(address);
	    }
	
	public List<RestaurantVO> searchcate(String category) {
//		 System.out.println("SearchService - search method called with address: " + address);
	        return dao.searchCate(category);
	    }
}
