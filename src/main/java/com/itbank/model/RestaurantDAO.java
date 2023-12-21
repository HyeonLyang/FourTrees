package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.RestaurantVO;
import com.itbank.model.vo.ReviewVO;

public interface RestaurantDAO {

	List<RestaurantVO> selectAll(String area_name);

	int getTotalRestaurant();
	
	RestaurantVO selectOne(int idx);

	void updateScore();

	void updateScore(ReviewVO input);

}
