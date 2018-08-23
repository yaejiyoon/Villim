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
	
	@RequestMapping("/homeMain.do")
	public ModelAndView homeMain() {
		ModelAndView mav = new ModelAndView();
		List<HomeDTO> homeList = homeService.getAllHomeDataMain();
		mav.addObject("homeList", homeList);
		mav.setViewName("home_main");
		return mav;
	}
	
	@RequestMapping("/search.do")
	public ModelAndView search(HttpServletRequest request, HttpSession session, String homeType, int people, String lat, String lng) throws Exception  {
		session.setAttribute("homeType", homeType);
		session.setAttribute("people", people);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("mapOn", "mapOn");
		mav.addObject("lat", lat);
		mav.addObject("lng", lng);
		
		if(session.getAttribute("tempDates")!=null) {
			System.out.println(session.getAttribute("tempDates"));
		}
		
		List tempDates = new ArrayList<>();
		tempDates = (List) session.getAttribute("tempDates");
		
		System.out.println("잘들어감? "+tempDates);
		
		List<HomeDTO> homeList = homeService.searchHomeData(homeType, people);
		
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
	
	@RequestMapping("/searchDate.do")
	public void datePick(HttpServletRequest request, HttpSession session) {
		String checkinDate = request.getParameter("checkinDate");
		String checkoutDate = request.getParameter("checkoutDate");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        // date1, date2 두 날짜를 parse()를 통해 Date형으로 변환.
        Date FirstDate = null;
        Date SecondDate = null;
	      try {
	         FirstDate = format.parse(checkinDate);
	         SecondDate = format.parse(checkoutDate);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	    //두 날짜 사이의 날짜 구하기
	      StringBuilder sb = new StringBuilder();

//	      ArrayList<String> dates = new ArrayList<String>();
	      List dates = new ArrayList<>();
	      Date currentDate = FirstDate;
	      while (currentDate.compareTo(SecondDate) <= 0) {
	         dates.add(format.format(currentDate));
	         Calendar c = Calendar.getInstance();
	         c.setTime(currentDate);
	         c.add(Calendar.DAY_OF_MONTH, 1);
	         currentDate = c.getTime();
	      }
	              
//	      System.out.println("dates 배열 : "+dates);
	      session.setAttribute("tempDates", dates);
//	      String blockedDate = sb.toString();
//	      System.out.println(sb.toString());
	      
	}
	
}
