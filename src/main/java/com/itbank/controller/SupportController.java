package com.itbank.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.NoticeService;

@Controller
@RequestMapping("/support")
public class SupportController {

	@Autowired private NoticeService ns;
	
	@GetMapping("/sup_main")
	public void sup_main() {
		
	}
	
	@GetMapping("/FAQ")
	public void FAQ()	{
	}
	@GetMapping("/notice")
	public ModelAndView notice()	{
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("notices", ns.getNotices());
		return mav;
	}
	@GetMapping("/QNA")
	public void QNA()	{
		
	}
}
