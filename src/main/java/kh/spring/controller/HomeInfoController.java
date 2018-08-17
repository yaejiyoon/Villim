package kh.spring.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.HomeService;
import kh.spring.interfaces.ReservService;

@Controller
public class HomeInfoController {
	
	@Autowired
	private HomeService homeService;
	
	@Autowired
	private ReservService reservService;
	
	@RequestMapping("/home_info.do")
	public ModelAndView home_Info(HttpServletRequest req) {
		int home_seq = Integer.parseInt(req.getParameter("seq"));
		System.out.println("homeseq : " + home_seq);
		
		HomeDTO hdto = homeService.getHomeData(home_seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.setViewName("home/home_info");

		return mav;
	}
	
	@RequestMapping("/clickDate.re")
	public void clickDate (HttpServletRequest request, HttpServletResponse response) {
		String checkinDate = request.getParameter("checkinDate");
		String checkoutDate = request.getParameter("checkoutDate");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
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
        
		System.out.println(FirstDate);
		System.out.println(SecondDate);
        
        // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
        // 연산결과 -950400000. long type 으로 return 된다.
        long calDate = FirstDate.getTime() - SecondDate.getTime(); 
        
        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
        long calDateDays = calDate / ( 24*60*60*1000); 
 
        calDateDays = Math.abs(calDateDays);
		
        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
		
        
		int home_seq = 5;
		
		HomeDTO hdto = homeService.getHomeData(home_seq);
		
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
