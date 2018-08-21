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

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReviewService;
import kh.spring.interfaces.HomeService;
import kh.spring.interfaces.ReservService;

@Controller
public class HomeInfoController {
	
	@Autowired
	private HomeService homeService;
	
	@Autowired
	private ReservService reservService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/home_info.do")
	public ModelAndView home_Info(HttpServletRequest req) {
		
		int home_seq = Integer.parseInt(req.getParameter("seq"));
		
		System.out.println("homeseq : " + home_seq);
		
		HomeDTO hdto = homeService.getHomeData(home_seq);
		
		//blockedDate불러오기
		String getBlockedDate = homeService.getBlockedDate(home_seq);
		
		//hostReview
		List<HostReviewDTO> hostReviewList = reviewService.getAllHostReviewData(home_seq);
		
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
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.addObject("getBlockedDate", getBlockedDate);
		mav.addObject("guestReviewList", guestReviewList);
		mav.addObject("hostReviewList", hostReviewList);
		mav.addObject("page", page);
		mav.setViewName("home/home_info");

		return mav;
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
	
	@RequestMapping("/reservation.re")
	public ModelAndView reservation(ReservationDTO dto,HttpServletRequest req) {
		
		String blockedDate = req.getParameter("blockedDate");
		System.out.println(blockedDate);
		
		int updateBlockDate = homeService.updateBlockedDate(blockedDate, dto.getHome_seq());
		
		if(updateBlockDate>0) {
			System.out.println("???????");
		}
		
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
		
		
		int insertReserve = reservService.insertData(dto);
		HomeDTO hdto = homeService.getHomeData(dto.getHome_seq());
		
		
		System.out.println(22);
		if(insertReserve>0) {
			System.out.println("되라되라도리ㅏㅓㅑㅓㄹ아ㅓ");
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.addObject("hdto", hdto);
		mav.setViewName("home/paymentReq");

		return mav;
		
	}
	
	public void paymentReq() {
		
	}
	
}
