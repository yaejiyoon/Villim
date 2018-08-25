package kh.spring.controller;

import java.io.IOException;
import java.text.ParseException;
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
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReviewService;
import kh.spring.interfaces.HomeService;
import kh.spring.interfaces.MemberService;
import kh.spring.interfaces.ReservService;

@Controller
public class HomeInfoController {
	
	@Autowired
	private HomeService homeService;
	
	@Autowired
	private ReservService reservService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/home_info.do")
	public ModelAndView home_Info(HttpServletRequest req) {
		
		int home_seq = Integer.parseInt(req.getParameter("seq"));
		
		System.out.println("homeseq : " + home_seq);
		
		HomeDTO hdto = homeService.getHomeData(home_seq);
		
		//date형태 변환 
		SimpleDateFormat fm1 = new SimpleDateFormat("yy/MM/dd");
	    SimpleDateFormat fm2 = new SimpleDateFormat("yyyy년 MM월");
		
		//blockedDate불러오기
		String getBlockedDate = homeService.getBlockedDate(home_seq);
		
		//hostReview
		List<HostReviewDTO> hostReviewList = reviewService.getAllHostReviewData(home_seq);
		
		//hostReview date 변환
		for(int i=0; i<hostReviewList.size(); i++) {
			Date to1 = null;
			try {
				to1 = fm1.parse(hostReviewList.get(i).getH_review_date());
			} catch (Exception e) {
				e.printStackTrace();
			}
			String str = fm2.format(to1);
			hostReviewList.get(i).setH_review_date(str);
		}
		
		//Review paging
		int currentPage = 0;
		String currentPageString = req.getParameter("currentPage");
		
		if (currentPageString == null) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageString);
		}
		
		Map<String, Integer> map = new HashMap<>();
		map.put("startNum", currentPage * 5-4); 
		map.put("endNum", currentPage * 5);
		map.put("home_seq", home_seq);
		
		//guestReivew
		List<GuestReviewDTO> guestReviewList = reviewService.getAllGuestReviewData(map);
		String page = reviewService.getReviewPageNavi(currentPage,home_seq);
		

		//guestReview date 변환
		for(int i=0; i<guestReviewList.size(); i++) {
			Date to1 = null;
			try {
				to1 = fm1.parse(guestReviewList.get(i).getG_review_date());
			} catch (Exception e) {
				e.printStackTrace();
			}
			String str = fm2.format(to1);
			guestReviewList.get(i).setG_review_date(str);
		}

		//숙소 상세 설명 
		HomeDescDTO hddto = homeService.getHomeDescData(home_seq);
		
		//편의시설
		String amenities = hdto.getHome_amenities();
		List<String> amenitiesList = new ArrayList<>();
		System.out.println(amenities);
		
		if(amenities != null) {
			for(int i=0;i<amenities.split(",").length;i++) {
				amenitiesList.add(amenities.split(",")[i]);
			}
		}
		
		
		//사용 가능 공간
		String access = hdto.getHome_guest_access();
		List<String> accessList = new ArrayList<>();
		System.out.println(access);
		
		if(access != null) {
			for(int i=0;i<access.split(",").length;i++) {
				accessList.add(access.split(",")[i]);
			}
		}
		
		
		//안전 시설
		String safety = hdto.getHome_safety();
		List<String> safetyList = new ArrayList<>();
		System.out.println(safety);

		
		if(safety != null) {
			for(int i=0;i<safety.split(",").length;i++) {
				safetyList.add(safety.split(",")[i]);
			}
		}
		
		//편의시설 totalCount
		int amenitiesCount = amenitiesList.size() + accessList.size() + safetyList.size();
		System.out.println(amenitiesCount);
		
		//숙소 이용 규칙
		String rules = hdto.getHome_rules();
		List<String> rulesList = new ArrayList<>();
		System.out.println(rules);
		
		if(rules != null) {
			for(int i=0;i<rules.split(",").length;i++) {
				rulesList.add(rules.split(",")[i]);
			}
		}
		
		//숙소 이용 규칙 더보기
		String rulesDetails = hdto.getHome_details();
		List<String> rulesDetailsList = new ArrayList<>();
		System.out.println(rules);
		
		if(rulesDetails != null) {
			for(int i=0;i<rulesDetails.split(",").length;i++) {
				rulesDetailsList.add(rulesDetails.split(",")[i]);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.addObject("getBlockedDate", getBlockedDate);
		mav.addObject("guestReviewList", guestReviewList);
		mav.addObject("hostReviewList", hostReviewList);
		mav.addObject("page", page);
		mav.addObject("hddto", hddto);
		mav.addObject("amenitiesList", amenitiesList);
		mav.addObject("accessList", accessList);
		mav.addObject("safetyList", safetyList);
		mav.addObject("amenitiesCount", amenitiesCount);
		mav.addObject("rulesList", rulesList);
		mav.addObject("rulesDetailsList", rulesDetailsList);
		mav.setViewName("home/home_info");
		return mav;
	}
	
	@RequestMapping("/reviewList.info")
	public void reviewList(HttpServletRequest req,HttpServletResponse response) {
		String currentPageString = req.getParameter("currentPage");
		int home_seq = Integer.parseInt(req.getParameter("home_seq"));
		
		//date형태 변환 
		SimpleDateFormat fm1 = new SimpleDateFormat("yy/MM/dd");
		SimpleDateFormat fm2 = new SimpleDateFormat("yyyy년 MM월");
		
		//Review paging
		int currentPage = 0;
				
		if (currentPageString == null) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageString);
		}
				
		Map<String, Integer> map = new HashMap<>();
		map.put("startNum", currentPage * 5-4); 
		map.put("endNum", currentPage * 5);
		map.put("home_seq", home_seq);
		
		//guestReivew
		List<GuestReviewDTO> guestReviewList = reviewService.getAllGuestReviewData(map);
		String page = reviewService.getReviewPageNavi(currentPage,home_seq);

		//guestReview date 변환
		for(int i=0; i<guestReviewList.size(); i++) {
			Date to1 = null;
			try {
				to1 = fm1.parse(guestReviewList.get(i).getG_review_date());
			} catch (Exception e) {
				e.printStackTrace();
			}
			String str = fm2.format(to1);
			guestReviewList.get(i).setG_review_date(str);
		}
		
		//hostReview
		List<HostReviewDTO> hostReviewList = reviewService.getAllHostReviewData(home_seq);
		
		//hostReview date 변환
		for(int i=0; i<hostReviewList.size(); i++) {
			Date to1 = null;
			try {
				to1 = fm1.parse(hostReviewList.get(i).getH_review_date());
			} catch (Exception e) {
				e.printStackTrace();
			}
			String str = fm2.format(to1);
			hostReviewList.get(i).setH_review_date(str);
		}
		
		
		//totalNavi
		int totalNavi = reviewService.countTotalNavi();
		
		Map<String, Object> reviewmap = new HashMap<String, Object>();
		
		reviewmap.put("guestReviewList", guestReviewList);
		reviewmap.put("hostReviewList", hostReviewList);
		reviewmap.put("page", page);
		reviewmap.put("totalNavi", totalNavi);
		
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		
		try {
			new Gson().toJson(reviewmap,response.getWriter());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/clickDate.re")
	public void clickDate (HttpServletRequest request, HttpServletResponse response) {
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		System.out.println(checkinDate);
		System.out.println(checkoutDate);
		
		

        
        // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
        // 연산결과 -950400000. long type 으로 return 된다.
        long calDate = FirstDate.getTime() - SecondDate.getTime(); 
        
        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
        long calDateDays = calDate / ( 24*60*60*1000); 
 
        calDateDays = Math.abs(calDateDays);
		
        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
        
        
		int home_seq = 1;
		
		HomeDTO hdto = homeService.getHomeData(home_seq);
		
		//두 날짜 사이의 날짜 구하기
		StringBuilder sb = new StringBuilder();

		ArrayList<String> dates = new ArrayList<String>();
		Date currentDate = FirstDate;
		while (currentDate.compareTo(SecondDate) <= 0) {
			dates.add(format.format(currentDate));
			Calendar c = Calendar.getInstance();
			c.setTime(currentDate);
			c.add(Calendar.DAY_OF_MONTH, 1);
			currentDate = c.getTime();
		}
		
		if(hdto.getHome_blocked_date() != null) {
			sb.append(",");
		}
		
		for(int i=0;i<dates.size();i++) {
			if(i == dates.size()-1) {
				sb.append(dates.get(i));
			}else {
				sb.append(dates.get(i)+",");
			}
		}
		        
//		        for (String date : dates) {
//		            System.out.println(date);
//		            sb.append(date+",");
//		        }
		        
		System.out.println(dates);
		
		String blockedDate = sb.toString();
		
		System.out.println(sb.toString());
		
		
		
		
		//1박 가격
		int price = hdto.getHome_price();
		String home_price = String.format("%,d", price);
		System.out.println(home_price);
		
		//1박 * 예약일수
		int priceWithNights = (int) (calDateDays*price);
		String priceRight = String.format("%,d", priceWithNights);
		
		//청소비
		int intCleaningfee = (int) (priceWithNights * 0.1);
		String cleaningfee = String.format("%,d", intCleaningfee);
		
		//서비스 수수료
		int intservicefee = (int) (priceWithNights * 0.05);
		String servicefee = String.format("%,d", intservicefee);
		
		//총 금액
		int intTotal = priceWithNights + intCleaningfee + intservicefee;
		String total = String.format("%,d", intTotal);
		
		JSONObject json = new JSONObject();
		
		json.put("priceLeft", "₩"+home_price+" x "+calDateDays+"박");
		json.put("priceRight", "₩"+priceRight);
		json.put("cleaningfee", "₩"+cleaningfee);
		json.put("servicefee", "₩"+servicefee);
		json.put("total", "₩"+total);
		json.put("blockedDate", blockedDate);
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		
		try {
			response.getWriter().print(json);
			response.getWriter().flush();
			response.getWriter().close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/reservReq.re")
	public ModelAndView reservReq(ReservationDTO dto,HttpServletRequest req, HttpSession session) {
		
		String blockedDate = req.getParameter("blockedDate");
		System.out.println(blockedDate);
		
		//int updateBlockDate = homeService.updateBlockedDate(blockedDate, dto.getHome_seq());
		
//		if(updateBlockDate>0) {
//			System.out.println("???????");
//		}
		
		String amount = dto.getTotalAmount();
		
		dto.setGuset_review("N");
		dto.setReservation_seq(1);
		dto.setTotalAmount(amount.replaceAll("[^0-9]", ""));
		
		
//		System.out.println(dto.getReservation_seq());
//		System.out.println(dto.getMember_email());
//		System.out.println(dto.getReserv_checkin());
//		System.out.println(dto.getReserv_checkout());
//		System.out.println(dto.getPopulation());
//		System.out.println(dto.getAmount());
//		System.out.println(dto.getHome_seq());
//		System.out.println(dto.getHome_name());
//		System.out.println(dto.getGuset_review());
		
		System.out.println(11);
		
		//session에 reservationDTO 정보 저장
		session.setAttribute("ReserveDTO", dto);
		
		
		HomeDTO hdto = homeService.getHomeData(dto.getHome_seq());
		
		
		System.out.println(22);
		/*if(insertReserve>0) {
			System.out.println("되라되라도리ㅏㅓㅑㅓㄹ아ㅓ");
		}*/
		
		String checkIn = dto.getReserv_checkin();
		String checkOut = dto.getReserv_checkout();
		
		System.out.println(checkIn+ " : " +checkOut);
		
		String checkInDate = null;
		String checkOutDate = null;
		
		if(checkIn != null || checkOut != null) {
			checkInDate = checkIn.split("-")[0] +"년 "+ checkIn.split("-")[1]+"월 "+checkIn.split("-")[2]+"일";
	        checkOutDate = checkOut.split("-")[0] +"년 "+ checkOut.split("-")[1]+"월 "+checkOut.split("-")[2]+"일";
	        
			System.out.println(checkInDate+ " : " +checkOutDate);
		}
        
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.addObject("hdto", hdto);
		mav.addObject("checkInDate", checkInDate);
		mav.addObject("checkOutDate", checkOutDate);
		mav.setViewName("home/reservationReq");

		return mav;
		
	}
	
	@RequestMapping("/reservReqToHost.re")
	public String reservReqToHost(HttpServletRequest req) {
		ReservationDTO reservDTO = (ReservationDTO) req.getSession().getAttribute("ReserveDTO");
		
		System.out.println(reservDTO.getTotalAmount());
		
		int insertReserve = reservService.insertData(reservDTO);
		
		return "redirect:home_info.do?seq="+ reservDTO.getHome_seq();
	}
	
	@RequestMapping("/paymentReq.re")
	public ModelAndView paymentReq(HttpServletRequest req) {
		int reservation_seq = Integer.parseInt(req.getParameter("seq"));
		
		//예약 정보
		ReservationDTO reservationDTO = reservService.getReservationData(reservation_seq);
		
		System.out.println(reservation_seq);
		
		//예약자 정보
		MemberDTO memberDTO = memberService.printProfile(reservationDTO.getMember_email());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reservationDTO", reservationDTO);
		mav.addObject("memberDTO", memberDTO);
		mav.setViewName("home/payment");

		return mav;
		
	}
	
}
