package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itbank.service.PhotoService;

@Controller
@RequestMapping("/photo")
public class PhotoController {
	
	@Autowired private PhotoService ps;
	
	@GetMapping("/photo_main")
	public String photo_main(Model model) {
		
		model.addAttribute("img_list", ps.getImg());
		
		return "/photo/photo_main";
	}
	
}
