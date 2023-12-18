package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.CategoryVO;
import com.itbank.model.vo.RestaurantVO;

public interface RankDAO {

	@Select("select * from restaurant where category = '카페.디저트' order by score fetch first 10 rows only")
	List<RestaurantVO> selectCateRank1();

	@Select("select * from restaurant where category = '중식' order by score fetch first 10 rows only")
	List<RestaurantVO> selectCateRank2();

	List<RestaurantVO> selectTotalRank();

	@Select("select r1.name as category, r2.* from category r1 " + 
			"inner join restaurant r2 " + 
			"on r1.idx = r2.category " + 
			"where r2.address like '%서울%' " + 
			"order by r2.score " + 
			"fetch first 10 rows only")
	List<RestaurantVO> selectSeoulRank();

	@Select("select r1.name as category, r2.* from category r1 " + 
			"inner join restaurant r2 " + 
			"on r1.idx = r2.category " + 
			"where r2.address like '%부산%' " + 
			"order by r2.score " + 
			"fetch first 10 rows only")
	List<RestaurantVO> selectBusanRank();

	@Select("select r1.name as category, r2.* from category r1 " + 
			"inner join restaurant r2 " + 
			"on r1.idx = r2.category " + 
			"where r2.address like '%강원%' " + 
			"order by r2.score " + 
			"fetch first 10 rows only")
	List<RestaurantVO> selectKangwonRank();

	@Select("select r1.name as category, r2.* from category r1 " + 
			"inner join restaurant r2 " + 
			"on r1.idx = r2.category " + 
			"where r2.address like '%제주%' " + 
			"order by r2.score " + 
			"fetch first 10 rows only")
	List<RestaurantVO> selectJejuRank();
	
	@Select("select * from category order by idx")
	List<CategoryVO> selectCateAll();

	List<RestaurantVO> selectCateRank(int idx);

	List<RestaurantVO> selectAllCateRank(int idx);

}
