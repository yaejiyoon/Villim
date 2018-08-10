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
		mav.setViewName("index");
		System.out.println("ffff");
		return mav;
	}
	
	@RequestMapping("/homeMain.do")
	public String homeMain() {
		return "home_main";
	}
	
}





