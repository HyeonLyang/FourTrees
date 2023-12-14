package com.itbank.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itbank.components.Paging;
import com.itbank.model.vo.RestaurantVO;
import com.itbank.model.vo.ReviewVO;

public interface SearchDAO {
//
//	List<RestaurantVO> searchAll(@Param("address") String address, @Param("category") String category);

	List<RestaurantVO> searchHeader(@Param("search") String search);

	
	// select count(*) from abc where search like '%word%';
	int getTotalSearch();

	List<ReviewVO> selectAll(Paging p);

	
}
