package kh.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
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
	
	@RequestMapping("/mapMove.do")
	public void mapMove(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Double swLat = Double.parseDouble(request.getParameter("swLat"));
		Double neLat = Double.parseDouble(request.getParameter("neLat"));
		Double swLng = Double.parseDouble(request.getParameter("swLng"));
		Double neLng = Double.parseDouble(request.getParameter("neLng"));
		
		MapDTO mdto = new MapDTO();
		mdto.setSwLat(swLat);
		mdto.setSwLng(swLng);
		mdto.setNeLat(neLat);
		mdto.setNeLng(neLng);
		
		List<HomeDTO> homeList = homeService.getHomeOnMap(mdto);
		List<HomePicDTO> homePic = homeService.getHomePic();
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		
		Map<String, Object> homeMapChange = new HashMap<String, Object>();
	      
		homeMapChange.put("home", homeList);
		homeMapChange.put("pic", homePic);
		
		new Gson().toJson(homeMapChange ,response.getWriter());
		
	}
	
}
