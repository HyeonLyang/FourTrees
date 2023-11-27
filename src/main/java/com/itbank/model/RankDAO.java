package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.RestaurantVO;

public interface RankDAO {

	@Select("select * from restaurant where category = '카페.디저트' order by score fetch first 10 rows only")
	List<RestaurantVO> selectCateRank1();

	@Select("select * from restaurant where category = '중식' order by score fetch first 10 rows only")
	List<RestaurantVO> selectCateRank2();

	@Select("select * from restaurant order by score fetch first 10 rows only")
	List<RestaurantVO> selectTotalRank();

	@Select("select * from restaurant where category = '중식' order by score fetch first 10 rows only")
	List<RestaurantVO> selectSeoulRank();

	@Select("select * from restaurant where category = '중식' order by score fetch first 10 rows only")
	List<RestaurantVO> selectBusanRank();

	@Select("select * from restaurant where category = '중식' order by score fetch first 10 rows only")
	List<RestaurantVO> selectKangwonRank();

	@Select("select * from restaurant where category = '중식' order by score fetch first 10 rows only")
	List<RestaurantVO> selectJejuRank();

}
