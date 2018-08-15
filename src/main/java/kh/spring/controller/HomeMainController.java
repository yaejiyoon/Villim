package kh.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class HomeMainController {
	@RequestMapping("/homeType_modal.do")
	public ModelAndView homeMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home_main");
		return mav;
	}
}
