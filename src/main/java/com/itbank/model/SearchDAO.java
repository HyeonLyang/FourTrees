package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itbank.model.vo.RestaurantVO;

public interface SearchDAO {

	List<RestaurantVO> searchAll(@Param("address") String address, @Param("category") String category);

	List<RestaurantVO> searchHeader(@Param("search") String search);

	
}
