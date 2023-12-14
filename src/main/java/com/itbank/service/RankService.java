package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.RankDAO;
import com.itbank.model.vo.RestaurantVO;

@Service
public class RankService {
	
	@Autowired private RankDAO dao;

	public List<RestaurantVO> getCateRank1() {
		return dao.selectCateRank1();
	}

	public List<RestaurantVO> getCateRank2() {
		return dao.selectCateRank2();
	}

	public List<RestaurantVO> getTotalRank() {
		return dao.selectTotalRank();
	}

	public List<RestaurantVO> getSeoulRank() {
		return dao.selectSeoulRank();
	}
	
	public List<RestaurantVO> getBusanRank() {
		return dao.selectBusanRank();
	}
	
	public List<RestaurantVO> getKangwonRank() {
		return dao.selectKangwonRank();
	}
	
	public List<RestaurantVO> getJejuRank() {
		return dao.selectJejuRank();
	}

	public Object getCateRank(String cate) {
		return dao.selectCateRank(cate);
	}

}
