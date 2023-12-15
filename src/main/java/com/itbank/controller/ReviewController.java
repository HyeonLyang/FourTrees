package com.itbank.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.ReviewDAO;
import com.itbank.model.vo.ReviewVO;
import com.itbank.service.RestaurantService;
import com.itbank.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@Autowired private RestaurantService rs;
	@Autowired private ReviewService rvs;
	@Autowired private ReviewDAO dao;

	// 리뷰 페이지로 이동
	@GetMapping("/review/{name}")
	public ModelAndView review(@RequestParam(value = "page", defaultValue = "1") int page,
							   @RequestParam(value = "res_idx", defaultValue = "1001")int res_idx,
							   @PathVariable String name) {
		ModelAndView mav = new ModelAndView("review/review");
		
		Map<String, Object> result = rvs.getReview(page,res_idx);
		
		mav.addObject("list", result.get("list"));
		mav.addObject("p", result.get("p"));
		mav.addObject("img_list", dao.selectImg(res_idx));
		mav.addObject("name", name);
		
		return mav;
	}

	@GetMapping("/review_area")
	public ModelAndView area(String area_name) {
		ModelAndView mav = new ModelAndView("review/review_area");

		mav.addObject("list", rs.getRestaurants(area_name));

		return mav;
	}

	@GetMapping("/img_popup")
	public void img_popup(Model model, int res_idx) {
		model.addAttribute("list", rvs.imgCollection(res_idx));
	}
	
	@GetMapping("/review_write/{name}")
	public String write(@PathVariable String name) {
		return "review/review_write";
	}
	
	@PostMapping("/review_write/{name}")
	public ModelAndView write(ReviewVO input,String score,
							  @RequestParam(value = "res_idx", defaultValue = "1001")int res_idx,
							  @PathVariable String name) throws Exception {
		ModelAndView mav = new ModelAndView("redirect:/review/review/{name}?res_idx=" + res_idx) {};
		
		if (score == null) {
			score = "0";
		}
		double num = Double.parseDouble(score);
		
		input.setScore(num);
		input.setRes_idx(res_idx);		
		
		rvs.addReview(input);
		
		return mav;
	}
}
