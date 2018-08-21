package kh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.MapDTO;
import kh.spring.interfaces.HomeService;

@Controller
public class HomeMainController {
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping("/search.do")
	public ModelAndView search(String homeType, String people, String lat, String lng) throws Exception  {
		System.out.println("집 유형 : "+homeType);
		System.out.println("인원 수 : "+people);
		System.out.println("장소 위도 : "+ lat);
		System.out.println("장소 경도 : "+ lng);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("mapOn", "mapOn");
		mav.addObject("lat", lat);
		mav.addObject("lng", lng);
		
		List<HomeDTO> homeList = homeService.getAllHomeDataMain();
		mav.addObject("homeList", homeList);
		mav.setViewName("home_main");
		return mav;
	}
	
	@RequestMapping(value="/mapMove.do")
	@ResponseBody
	public ModelAndView mapMove(double swLat, double neLat, double swLng, double neLng) throws Exception {
		ModelAndView mav = new ModelAndView();
		MapDTO mdto = new MapDTO();
		mdto.setSwLat(swLat);
		mdto.setSwLng(swLng);
		mdto.setNeLat(neLat);
		mdto.setNeLng(neLng);
		List<HomeDTO> homeList = homeService.getHomeOnMap(mdto);
		mav.addObject("mapOn", "mapOn");
		mav.addObject("homeList", homeList);
		mav.setViewName("home_main");
		return mav;
	}
	
}
