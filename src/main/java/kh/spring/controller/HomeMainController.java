package kh.spring.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.interfaces.HomeService;

@Controller
public class HomeMainController {
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping("/homeMain.do")
	public ModelAndView homeMain() {
		ModelAndView mav = new ModelAndView();
		List<HomeDTO> homeList = homeService.getAllHomeDataMain();
		List<HomePicDTO> homePic = homeService.getHomePic();
		mav.addObject("homeList", homeList);
		mav.addObject("pic", homePic);
		mav.setViewName("home_main");
		return mav;
	}
	
	@RequestMapping("/search.do")
	public ModelAndView search(HttpServletRequest request, HttpSession session, String homeType, int people, String lat, String lng, String startDate, String endDate) throws Exception  {
		session.setAttribute("homeType", homeType);
		session.setAttribute("people", people);
		System.out.println("homeType : "+homeType);
		System.out.println("people : "+people);
		System.out.println("startDate : "+startDate);
		System.out.println("endDate : "+endDate);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("mapOn", "mapOn");
		mav.addObject("lat", lat);
		mav.addObject("lng", lng);
		
		
		List dates = new ArrayList<>();
		String dateIsChecked = "0";
		
		if(!startDate.equals("0")&&!endDate.equals("0")) {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	        // date1, date2 두 날짜를 parse()를 통해 Date형으로 변환.
	        Date FirstDate = null;
	        Date SecondDate = null;
		      try {
		         FirstDate = format.parse(startDate);
		         SecondDate = format.parse(endDate);
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      
		    //두 날짜 사이의 날짜 구하기
		      StringBuilder sb = new StringBuilder();

		      Date currentDate = FirstDate;
		      while (currentDate.compareTo(SecondDate) <= 0) {
		         dates.add(format.format(currentDate));
		         Calendar c = Calendar.getInstance();
		         c.setTime(currentDate);
		         c.add(Calendar.DAY_OF_MONTH, 1);
		         currentDate = c.getTime();
		      }
			
		    System.out.println(dates);
		    session.setAttribute("dates", dates);
		    dateIsChecked = "1";
		}
		
		session.setAttribute("dateIsChecked", dateIsChecked);
		
		
		
		List<HomeDTO> homeList = homeService.searchHomeData(homeType, people, dates, dateIsChecked);
		List<HomePicDTO> homePic = homeService.getHomePic();
		
		mav.addObject("homeList", homeList);
		mav.addObject("pic", homePic);
		mav.setViewName("home_main");
		return mav;
	}
	
	@RequestMapping("/mapMove.do")
	public void mapMove(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {
		
		Double swLat = Double.parseDouble(request.getParameter("swLat"));
		Double neLat = Double.parseDouble(request.getParameter("neLat"));
		Double swLng = Double.parseDouble(request.getParameter("swLng"));
		Double neLng = Double.parseDouble(request.getParameter("neLng"));
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("homeType", (String) session.getAttribute("homeType"));
		param.put("people", session.getAttribute("people"));
		param.put("dates", (List) session.getAttribute("dates"));
		param.put("dateIsChecked", (String) session.getAttribute("dateIsChecked"));
		
		param.put("swLat", swLat);
		param.put("neLat", neLat);
		param.put("swLng", swLng);
		param.put("neLng", neLng);
		
		List<HomeDTO> homeList = homeService.getHomeOnMap(param);
		List<HomePicDTO> homePic = homeService.getHomePic();
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		
		Map<String, Object> homeMapChange = new HashMap<String, Object>();
	      
		homeMapChange.put("home", homeList);
		homeMapChange.put("pic", homePic);
		
		new Gson().toJson(homeMapChange ,response.getWriter());
		
	}
	
}
