package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	// 내 정보로 들어가기
	@GetMapping("/password")
	public void password() {}
	
	// 내 정보로 들어갈 시 비번을 입력해야 정보 수정/삭제로 들어간다
	@PostMapping("/password")
	public String password(String pw) {
		return "redirect:/myPage/info";
	}
	
	// 정보 수정/삭제하는 곳
	@GetMapping("/info")
	public void info() {}
	
	// 정보 수정 (msg.jsp로 이동해 js로 메세지를 띄움)
	@PostMapping("/info")
	public ModelAndView update() {
		ModelAndView mav = new ModelAndView("redirect:/account/logout");				
		
		return mav;
	}
	
	// 정보 삭제 (msg.jsp로 이동해 js로 메세지를 띄움)
	@GetMapping("/delete")
	public ModelAndView delete() {
		ModelAndView mav = new ModelAndView("redirect:/account/logout");			
		
		return mav;
	}
	
	// 찜한 테이블 출력
	@GetMapping("/bookmark")
	public void bookmark() {}
	
	@GetMapping("/myReply")
	public void reply() {}
}
