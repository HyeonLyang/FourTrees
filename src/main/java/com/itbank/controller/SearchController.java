package com.itbank.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.itbank.model.SearchDAO;
import com.itbank.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired private SearchService ss;
	
	@Autowired private SearchDAO dao;
	
	@GetMapping("/sc_main")
	public void sc_main() {
		
	}

	@GetMapping("/sc_detail")
	public ModelAndView search(@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "address", required = false) String address,
			@RequestParam(value = "category", required = false) String category
			) {
		ModelAndView mav = new ModelAndView("search/sc_detail");

		Map<String, Object> result = ss.getSearch(page, address, category);
		
		mav.addObject("rq", result.get("rq"));
		mav.addObject("tt", result.get("tt"));
		mav.addObject("add", address);
		mav.addObject("cate", category);
		mav.addObject("list", result.get("list"));
		mav.addObject("p", result.get("p"));
		
		return mav;
	}
	
    
}
