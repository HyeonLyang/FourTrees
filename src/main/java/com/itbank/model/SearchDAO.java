package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.RestaurantVO;

public interface SearchDAO {

	@Select("select * from restaurant where address like '%' || #{address} || '%'")
    List<RestaurantVO> searchAll(String address);
	
	@Select("select * from restaurant where category like '%' || #{category} || '%'")
    List<RestaurantVO> searchCate(String category);
}
