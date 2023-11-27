package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.AccountVo;
import com.itbank.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired private AccountService as;
	
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("/login")
	public ModelAndView login(AccountVo input, HttpSession session) {
		ModelAndView mav = new ModelAndView("account/LoginMsg");
		
		input = as.login(input);
		
		if (input != null) {			
			session.setAttribute("user", input);
			mav.addObject("message", "로그인 완료");
		}
		
		return mav;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView("account/LoginMsg");
		
		session.removeAttribute("user");
		mav.addObject("message", "로그아웃 되었습니다");
		
		return mav;
	}
	
	@GetMapping("/signUp")
	public void signUp() {}
	
	@PostMapping("/signUp")
	public ModelAndView signUp(AccountVo input) {
		ModelAndView mav = new ModelAndView("account/MyPageMsg");
		
		mav.addObject("row", as.addAccount(input));
		mav.addObject("message", "가입을 축하드립니다!!!");
		mav.addObject("location", "account/login");
		
		return mav;
	}
}
