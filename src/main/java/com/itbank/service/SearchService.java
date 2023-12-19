package com.itbank.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.components.Paging;
import com.itbank.model.SearchDAO;
import com.itbank.model.vo.RestaurantVO;
import com.itbank.model.vo.ReviewVO;

@Service
public class SearchService {

	@Autowired private SearchDAO dao;

	public Map<String, Object> getSearch(int reqPage, String address, String category) {
		Paging p = new Paging(reqPage, dao.getTotalSearchParam(address, category), address, category);

		List<RestaurantVO> list = dao.selectAll(p);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("rq",reqPage);
		result.put("tt",dao.getTotalSearchParam(address, category));
		result.put("list", list);
		result.put("p", p);
		
		return result;
	}


}
