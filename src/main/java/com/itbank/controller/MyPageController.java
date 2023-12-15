package com.itbank.controller;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.components.SHA512;
import com.itbank.model.vo.AccountVo;
import com.itbank.service.AccountService;

@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@Autowired private AccountService as;
	@Autowired private SHA512 hash;
	
	// 내 정보로 들어가기
	@GetMapping("/password")
	public void password() {}
	
	// 내 정보로 들어갈 시 비번을 입력해야 정보 수정/삭제로 들어간다
	@PostMapping("/password")
	public ModelAndView password(String pw,HttpSession session,AccountVo input) throws NoSuchAlgorithmException {
		ModelAndView mav = new ModelAndView();
		
		input = (AccountVo) session.getAttribute("user");
		
		pw = hash.getHash(pw);
		
		if (pw.equals(input.getUserpw())) {
			mav.setViewName("redirect:/myPage/info");
		}
		else {
			mav.setViewName("redirect:/myPage/password");
		}
		
		return mav;
	}
	
	// 정보 수정/삭제하는 곳
	@GetMapping("/info")
	public void info() {}
	
	// 정보 수정
	@PostMapping("/info")
	public ModelAndView update(AccountVo input) {
		ModelAndView mav = new ModelAndView("redirect:/account/logout");		
		
		as.updateAccount(input);
		
		return mav;
	}
	
	// 비밀번호 변경
	@GetMapping("/info_pw_change")
	public void info_pw_change() {}
	
	@PostMapping("/info_pw_change")
	public ModelAndView updatePW(AccountVo input, HttpSession session, String userpw) {
		ModelAndView mav = new ModelAndView("redirect:/account/logout");
		
		input = (AccountVo) session.getAttribute("user");
		input.setUserpw(userpw);				
		
		as.updatePW(input);
		
		return mav;
	}
	
	// 삭제 전 주의사항 페이지
	@GetMapping("/info_delete")
	public void info_delete() {}
	
	// 정보 삭제
	@GetMapping("/delete/{idx}")
	public ModelAndView delete(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("redirect:/account/logout");			
		
		as.deleteAccount(idx);
		
		return mav;
	}
	
	// 찜한 테이블 출력
	@GetMapping("/bookmark")
	public void bookmark() {}
	
	@GetMapping("/myReply")
	public void reply() {}
}
