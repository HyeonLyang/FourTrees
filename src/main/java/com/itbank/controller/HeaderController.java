package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.RestaurantVO;
import com.itbank.service.SearchService;

@Controller
@RequestMapping("/header")
public class HeaderController {
	@Autowired private SearchService ss;

    
	 @GetMapping("/search")
	    public ModelAndView search(@RequestParam(name = "search", required = false) String search) {
	        ModelAndView mav = new ModelAndView();

	        if (search != null && !search.isEmpty()) {
	            List<RestaurantVO> list = ss.searchHeader(search);
	            mav.addObject("list", list);
	        } else {
	            // 검색어가 없을 때의 예외 처리 또는 기본 동작 추가
	        }

	        mav.setViewName("search/sc_detail");
	        return mav;
	    }
}
