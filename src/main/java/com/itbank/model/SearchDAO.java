package com.itbank.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itbank.components.Paging;
import com.itbank.model.vo.RestaurantVO;
import com.itbank.model.vo.ReviewVO;

public interface SearchDAO {

	List<RestaurantVO> selectAll(Paging p);
	
	// select count(*) from abc;
	int getTotalSearch();

	int getTotalSearchParam(@Param("address") String address, @Param("category") String category);
	
}
