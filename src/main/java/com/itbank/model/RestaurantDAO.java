package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.RestaurantVO;

public interface RestaurantDAO {

	List<RestaurantVO> selectAll();

	int getTotalRestaurant();
	
	RestaurantVO selectOne(int idx);

}
