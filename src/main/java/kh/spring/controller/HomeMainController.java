package kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeMainController {
	@RequestMapping("/search.do")
	public ModelAndView search(String homeType, String people, String lat, String lng) {
		System.out.println("집 유형 : "+homeType);
		System.out.println("인원 수 : "+people);
		System.out.println("장소 위도 : "+ lat);
		System.out.println("장소 경도 : "+ lng);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mapOn", "mapOn");
		mav.addObject("lat", lat);
		mav.addObject("lng", lng);
		mav.setViewName("home_main");
		return mav;
	}
	
	
}
