package com.itbank.model;

import java.util.List;

import com.itbank.components.Paging;
import com.itbank.model.vo.RestaurantVO;

public interface RestaurantDAO {

	List<RestaurantVO> selectAll(Paging p);

	int getTotalRestaurant();
	
	RestaurantVO selectOne(int idx);

}
