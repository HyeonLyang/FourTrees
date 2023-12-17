package com.itbank.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itbank.model.vo.CategoryVO;
import com.itbank.model.vo.RestaurantVO;
import com.itbank.service.RankService;

@Controller
@RequestMapping("/rank")
public class RankController {
	
	@Autowired private RankService rs;
	
	@GetMapping("/rank_main")
	public void rank_main() {}
	
	@GetMapping("/rank_total")
	public String rank_total(Model model) {
		List<Integer> rank_list = new ArrayList<>();
		
		for(int i = 1; i <= 10; i++) {
			rank_list.add(i);
		}
		
		model.addAttribute("rank", rank_list);
		model.addAttribute("res_list", rs.getTotalRank());
		
		return "rank/rank_total";
	}
	
	@GetMapping("/rank_category")
	public String rank_category(Model model) {
		List<Integer> rank_list = new ArrayList<>();
		List<RestaurantVO> res_list = new ArrayList<>();
		Map<String, Object> map = new HashMap<String, Object>();
		for(int i = 1; i <= 5; i++) {
			rank_list.add(i);
		}
		List<CategoryVO> cate_list = rs.getCateList();
		
		for(CategoryVO cate : cate_list) {
			res_list = rs.getAllCateRank(cate.getIdx());
			model.addAttribute("rank" + cate_list.indexOf(cate), res_list);
			System.out.println(cate.getName());
		}
		
		model.addAttribute("rank", rank_list);
		model.addAttribute("cate_list", cate_list);
		
		return "rank/rank_category";
	}
	
	@GetMapping("/rank_categoryAJ")
	public String rank_categoryAJ(Model model, int idx) {
		List<Integer> rank_list = new ArrayList<>();
		
		for(int i = 1; i <= 10; i++) {
			rank_list.add(i);
		}
		
		model.addAttribute("rank", rank_list);
		model.addAttribute("res_list", rs.getCateRank(idx));		
		model.addAttribute("cate_list", rs.getCateList());
		
		return "rank/rank_categoryAJ";
	}
	
	@GetMapping("/rank_area")
	public String rank_area(Model model) {
		List<Integer> rank_list = new ArrayList<>();
		
		for(int i = 1; i <= 10; i++) {
			rank_list.add(i);
		}
		
		model.addAttribute("rank", rank_list);
		model.addAttribute("res_seoul", rs.getSeoulRank());
		model.addAttribute("res_busan", rs.getBusanRank());
		model.addAttribute("res_kangwon", rs.getKangwonRank());
		model.addAttribute("res_jeju", rs.getJejuRank());
		
		return "rank/rank_area";
	}

	
}
