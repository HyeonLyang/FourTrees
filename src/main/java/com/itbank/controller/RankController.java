package com.itbank.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		for(int i = 1; i <= 10; i++) {
			rank_list.add(i);
		}
		
		model.addAttribute("rank", rank_list);
		model.addAttribute("res_list1", rs.getCateRank1());		// 카테고리 랭크 위쪽
		model.addAttribute("res_list2", rs.getCateRank2());		// 카테고리 랭크 아래쪽
		
		return "rank/rank_category";
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
