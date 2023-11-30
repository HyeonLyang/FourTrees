package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.RestaurantDAO;
import com.itbank.model.vo.RestaurantVO;

@Service
public class RestaurantService {

	@Autowired private RestaurantDAO dao;
	
	public List<RestaurantVO> getRestaurants() {
		return dao.selectAll();
	}
	
	public RestaurantVO getResturant(int idx) {
		return dao.selectOne(idx);
	}

}
