package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itbank.model.vo.RestaurantVO;

public interface SearchDAO {

//	@Select("select * from restaurant where address like '%' || #{address} || '%'")
//    List<RestaurantVO> searchAll(String address);
	
	List<RestaurantVO> searchAll(@Param("address") String address, @Param("category") String category);
}
