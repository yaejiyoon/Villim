package kh.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
	
	
	@RequestMapping("/")
	public ModelAndView welcome() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("result","result");
		mav.setViewName("home_info");
		System.out.println("ffff");
		return mav;
	}
}
