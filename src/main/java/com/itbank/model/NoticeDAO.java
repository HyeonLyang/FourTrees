package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.NoticeVO;
import com.itbank.model.vo.RestaurantVO;

public interface NoticeDAO {

	
	@Select("select * from notice order by idx desc")
	List<NoticeVO> selectAll();


}
