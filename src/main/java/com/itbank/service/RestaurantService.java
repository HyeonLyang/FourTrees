package com.itbank.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.components.Paging;
import com.itbank.model.RestaurantDAO;
import com.itbank.model.vo.RestaurantVO;

@Service
public class RestaurantService {

	@Autowired private RestaurantDAO dao;
	
	public Map<String, Object> getRestaurants(int reqPage) {
		Paging p = new Paging(reqPage, dao.getTotalRestaurant());
		
		List<RestaurantVO> list = dao.selectAll(p);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("list", list);
		result.put("p", p);
		
		return result;
	}
	
	public RestaurantVO getResturant(int idx) {
		return dao.selectOne(idx);
	}

}
