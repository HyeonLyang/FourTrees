package com.itbank.controller;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.ReviewVO;
import com.itbank.service.RestaurantService;
import com.itbank.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@Autowired RestaurantService rs;
	@Autowired ReviewService rvs;

	// 리뷰 페이지로 이동
	@GetMapping("/review")
	public ModelAndView review(@RequestParam(value = "page", defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> result = rvs.getReview(page);
		
		mav.addObject("list", result.get("list"));
		mav.addObject("p", result.get("p"));
		
		return mav;
	}

	@GetMapping("/review_area")
	public ModelAndView area() {
		ModelAndView mav = new ModelAndView("review/review_area");

		mav.addObject("list", rs.getRestaurants());

		return mav;
	}

	@GetMapping("/img_popup")
	public void img_popup() {}
	
	@GetMapping("/review_write")
	public void write() {}
	
	@PostMapping("/review_write")
	public ModelAndView write(ReviewVO input,String score) throws IOException {
		ModelAndView mav = new ModelAndView("redirect:/");
		double num = Double.parseDouble(score);
		
		input.setScore(num);
		
		rvs.addReview(input);
		
		return mav;
	}
}
