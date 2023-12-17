package com.itbank.controller;

import java.util.List;
import java.util.Map;

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

		// 리뷰 페이지로 이동
		@GetMapping("/search")
		public ModelAndView review(@RequestParam(value = "page", defaultValue = "1") int page,
				@RequestParam(value = "address", required = false) String address,
				@RequestParam(value = "category", required = false) String category
				) {
			ModelAndView mav = new ModelAndView("search/sc_detail");
			
			Map<String, Object> result = ss.getSearch(page, address, category);
			
			mav.addObject("list", result.get("list"));
			mav.addObject("p", result.get("p"));
			
			return mav;
		}
	 
	 
}
