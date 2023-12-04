package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mbti")
public class MbtiController {
	
	@GetMapping("/mbti_main")
	public void mbti_main() {}
	
	@GetMapping("/istj")
	public void istj() {}
	
	@GetMapping("/isfj")
	public void isfj() {}
	
	@GetMapping("/infj")
	public void infj() {}
	
	@GetMapping("/intj")
	public void intj() {}
	
	@GetMapping("/istp")
	public void istp() {}
	
	@GetMapping("/isfp")
	public void isfp() {}
	
	@GetMapping("/infp")
	public void infp() {}
	
	@GetMapping("/intp")
	public void intp() {}
	
	@GetMapping("/estp")
	public void estp() {}
	
	@GetMapping("/esfp")
	public void esfp() {}
	
	@GetMapping("/enfp")
	public void enfp() {}
	
	@GetMapping("/entp")
	public void entp() {}
	
	@GetMapping("/estj")
	public void estj() {}
	
	@GetMapping("/esfj")
	public void esfj() {}
	
	@GetMapping("/enfj")
	public void enfj() {}
	
	@GetMapping("/entj")
	public void entj() {}
}
