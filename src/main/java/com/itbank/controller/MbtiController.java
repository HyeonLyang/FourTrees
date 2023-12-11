package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.MbtiVO;

@Controller
@RequestMapping("/mbti")
public class MbtiController {
	
	@GetMapping("/mbti_main")
	public void mbti_main() {}
	
	@GetMapping("/mbti_research")
	public void mbti_research() {}
	
	@GetMapping("/mbti_result")
	public void mbti_result() {}
	
	@GetMapping("/test/{mbti}")
	public ModelAndView Test(@PathVariable String mbti)  {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mbti/mbti_result");
		mav.addObject("result", mbti);
		
		return mav;
	}
	
	/*
	 * @PostMapping("/mbti_research") public ModelAndView check(HttpSession session)
	 * { ModelAndView mav = new ModelAndView("redirect:/mbti/entj");
	 * 
	 * return mav; }
	 */
}
