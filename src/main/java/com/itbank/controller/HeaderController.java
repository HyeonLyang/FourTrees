package com.itbank.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.itbank.service.SearchService;

@Controller
@RequestMapping("/header")
public class HeaderController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
 
	@Autowired
	SessionLocaleResolver localeResolver;
 
	@Autowired
	MessageSource messageSource;
 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String greeting(String lang, Locale locale, HttpServletRequest request, Model model) {
 
		// RequestMapingHandler로 부터 받은 Locale 객체
		logger.info("Welcome greeting! The client locale is {}.", locale);
 
		// localeResolver 로부터 Locale 을 출력
		logger.info("Session locale is {}.", localeResolver.resolveLocale(request));
 
		// JSP 페이지에서 EL식으로 사용할 수 있도록 모델에 등록합니다.
		model.addAttribute("siteCount", messageSource.getMessage("STAT.STAT", null, "default text", locale));
 
		return "/";
	}
	
	@Autowired private SearchService ss;

		// 리뷰 페이지로 이동
		@GetMapping("/search")
		public ModelAndView review(@RequestParam(value = "page", defaultValue = "1") int page,
				@RequestParam(value = "address", required = false) String address,
				@RequestParam(value = "category", required = false) String category
				) {
			ModelAndView mav = new ModelAndView("search/sc_detail");
			
			Map<String, Object> result = ss.getSearch(page, address, category);
			
			mav.addObject("list", result.get("list"));
			mav.addObject("p", result.get("p"));
			
			return mav;
		}
}
