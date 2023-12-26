package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itbank.service.AccountService;
import com.itbank.service.BookmarkService;
import com.itbank.service.PhotoService;
import com.itbank.service.RestaurantService;
import com.itbank.service.ReviewService;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

	@Autowired private RestaurantService rs;
	@Autowired private ReviewService rvs;
	@Autowired private BookmarkService bs;
	@Autowired private PhotoService ps;

	@GetMapping("/res_detail/{idx}")
	public String detail(@PathVariable int idx, Model model) {
		int cnt = rvs.getReviews(idx).size();
		
		model.addAttribute("res", rs.getResturant(idx));
		model.addAttribute("bmk_cnt", bs.getBookmarkCnt(idx));
		model.addAttribute("rev_cnt", cnt);

		return "restaurant/res_detail";
	}

	@GetMapping("/res_img/{idx}")
	public String res_img(@PathVariable int idx, Model model) {
		int cnt = rvs.getReviews(idx).size();
		
		model.addAttribute("photo_list", ps.getPhotoList(idx));
		model.addAttribute("res", rs.getResturant(idx));
		model.addAttribute("bmk_cnt", bs.getBookmarkCnt(idx));
		model.addAttribute("rev_cnt", cnt);

		return "restaurant/res_img";
	}

	@GetMapping("/res_review/{idx}")
	public String res_review(@PathVariable int idx, Model model) {
		int cnt = rvs.getReviews(idx).size();
		
		model.addAttribute("res", rs.getResturant(idx));
		model.addAttribute("reviews", rvs.getReviews(idx));
		model.addAttribute("photo_list", ps.getPhotoList(idx));
		model.addAttribute("bmk_cnt", bs.getBookmarkCnt(idx));
		model.addAttribute("rev_cnt", cnt);

		return "restaurant/res_review";
	}

	@GetMapping("res_map/{idx}")
	public String res_map(@PathVariable int idx, Model model) {
		int cnt = rvs.getReviews(idx).size();
		
		model.addAttribute("res", rs.getResturant(idx));
		model.addAttribute("bmk_cnt", bs.getBookmarkCnt(idx));
		model.addAttribute("rev_cnt", cnt);

		return "restaurant/res_map";
	}
	
}
