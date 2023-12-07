package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.components.Romanizer;
import com.itbank.model.RestaurantDAO;
import com.itbank.model.vo.RestaurantVO;

@Service
public class RestaurantService {

	@Autowired private RestaurantDAO dao;
	
	public List<RestaurantVO> getRestaurants() {
		return dao.selectAll();
	}
	
	public RestaurantVO getResturant(int idx) {
		Romanizer rom = new Romanizer();
		RestaurantVO row = dao.selectOne(idx);
		
		row.setRom_name(rom.change(row.getName()));
		row.setRom_address(rom.change(row.getAddress()));
		
		return row;
	}

}
