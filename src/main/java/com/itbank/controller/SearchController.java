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
@RequestMapping("/search")
public class SearchController {

	@Autowired private SearchService ss;
	
	@GetMapping("/sc_main")
	public void sc_main() {
		
	}
    
    @GetMapping("/sc_detail")
    public ModelAndView sc_detail(
    	@RequestParam(value = "address", required = false) String address,
        @RequestParam(value = "category", required = false) String category
    ) {
        ModelAndView mav = new ModelAndView();
        List<RestaurantVO> list = ss.search(address, category);
        mav.addObject("list", list);
        mav.setViewName("search/sc_detail");
        return mav;
    }
}
