package com.itbank.controller;

import java.security.NoSuchAlgorithmException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.components.SHA512;
import com.itbank.model.vo.AccountVo;
import com.itbank.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired private AccountService as;	
	
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("/login")
	public ModelAndView login(AccountVo input, HttpSession session,
							 @RequestParam(name = "login_check", required = false) String login_check) {
		ModelAndView mav = new ModelAndView("redirect:/");
		
		input = as.login(input);
		
		if (input != null) {			
			session.setAttribute("user", input);			
		}
		
		return mav;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/");
		
		session.removeAttribute("user");		
		
		return mav;
	}
	
	@GetMapping("/signUp")
	public void signUp() {}
	
	@PostMapping("/signUp")
	public ModelAndView signUp(AccountVo input) {
		ModelAndView mav = new ModelAndView("redirect:/");
		
		as.addAccount(input);
		
		return mav;
	}
	
	@GetMapping("/findID") 
	public void findID() {}
	
	@PostMapping("/findID")
	public ModelAndView findID(String email) {
		ModelAndView mav = new ModelAndView("redirect:/account/ID_result/" + email);										
		
		return mav;
	}
	
	@GetMapping("/findPW") 
	public void findPW() {}
	
	@PostMapping("/findPW")
	public ModelAndView findPW(AccountVo input) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("redirect:/account/PW_result/" 
						+ input.getUserid() + "/" + input.getEmail());
		return mav;
	}
	
	@GetMapping("/ID_result/{email:.+}")
	public ModelAndView ID_result(@PathVariable String email) {
		ModelAndView mav = new ModelAndView("account/ID_result");
				
		mav.addObject("ID", as.findAccount(email));
		
		return mav;
	}
	
	@GetMapping("PW_result/{userid}/{email:.+}")
	public ModelAndView PW_result(@PathVariable String userid, 
								  @PathVariable String email,AccountVo input) 
										  throws NoSuchAlgorithmException {
		ModelAndView mav = new ModelAndView("account/PW_result");
		
		String userpw = "";
		
		if (as.findPW(input, 0) != null) {			
			userpw = UUID.randomUUID().toString().substring(0, 6);		
			mav.addObject("PW", userpw);
			input.setUserpw(userpw);
			as.NewPW(input, 0);
		}
		else {
			mav.addObject("PW", "아이디나 이메일이 틀립니다");
		}
						
		return mav;
	}
}
