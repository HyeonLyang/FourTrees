package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.RestaurantVO;

public interface RestaurantDAO {

	List<RestaurantVO> selectAll(String area_name);

	int getTotalRestaurant();
	
	RestaurantVO selectOne(int idx);

	void updateScore(double resScore);

}
