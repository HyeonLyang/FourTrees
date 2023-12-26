package com.itbank.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.SupportService;



@Controller
@RequestMapping("/support")
public class SupportController {

	@Autowired private SupportService ss;
	
	@GetMapping("/sup_main")
	public void sup_main() {
		
	}
	
	@GetMapping("/FAQ")
	public ModelAndView FAQ(@RequestParam(value = "page", defaultValue = "1") int page,
			   @RequestParam(value = "idx", defaultValue = "1")int idx)	{
		ModelAndView mav = new ModelAndView("support/FAQ");
		Map<String, Object> result = ss.getNotice(page, idx);
		
		mav.addObject("total", result.get("total"));
		mav.addObject("list", result.get("list"));
		mav.addObject("p", result.get("p"));
		return mav;
	}
	@GetMapping("/notice")
	public ModelAndView notice(@RequestParam(value = "page", defaultValue = "1") int page,
			   @RequestParam(value = "idx", defaultValue = "1")int idx)	{
		ModelAndView mav = new ModelAndView("support/notice");
		Map<String, Object> result = ss.getNotice(page, idx);
		
		mav.addObject("total", result.get("total"));
		mav.addObject("list", result.get("list"));
		mav.addObject("p", result.get("p"));
		return mav;
	}

	@GetMapping("/QNA")
	public void qna() {
	}
}
