package kh.spring.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
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

import kh.spring.dto.DetailDTO;
import kh.spring.dto.BedDTO;
import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.LikeyListDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;
import kh.spring.dto.PaymentDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReviewService;
import kh.spring.interfaces.HomeService;
import kh.spring.interfaces.LikeyService;
import kh.spring.interfaces.MemberService;
import kh.spring.interfaces.MessageService;
import kh.spring.interfaces.PaymentService;
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
	
	@Autowired
	private MessageService MessageService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private LikeyService likeyService;
	
	@RequestMapping("/home_info.do")
	public ModelAndView home_Info(HttpServletRequest req) {
		
		String member_email = null;
		if(req.getSession().getAttribute("login_email") != null) {
			member_email = req.getSession().getAttribute("login_email").toString();
		}

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
		
		//멤버 정보
		MemberDTO memberDTO = memberService.printProfile(hdto.getMember_email());
		
		//침대
		BedDTO bedDTO = homeService.getBedData(home_seq);
		int bedCount = 0;
		int bedroom = 0;
		List<BedDTO> bedList = new ArrayList<>();
		if(bedDTO != null) {
			for(int i=0;i<bedDTO.getBed_single().split(",").length;i++) {
				bedCount = bedCount + Integer.parseInt(bedDTO.getBed_single().split(",")[i])
				+Integer.parseInt(bedDTO.getBed_double().split(",")[i])
				+Integer.parseInt(bedDTO.getBed_queen().split(",")[i]);
			}
			//침실
			bedroom = bedDTO.getBed_single().split(",").length;
			
			for(int j=0;j<bedroom;j++) {
				BedDTO dto = new BedDTO();
				dto.setBed_single(bedDTO.getBed_single().split(",")[j]);
				dto.setBed_double(bedDTO.getBed_double().split(",")[j]);
				dto.setBed_queen(bedDTO.getBed_queen().split(",")[j]);
				
				bedList.add(dto);
			}
		}
		
		
		System.out.println("침대 갯수 : " + bedCount);
		//욕실
		int bathroom = 0;
		//공용공간
		boolean pub = false;
		int sofa= 0;
		int mattress = 0;
		if(hdto.getHome_public() != null) {
			bathroom = Integer.parseInt(hdto.getHome_public().split(",")[2]);
			
			sofa = Integer.parseInt(hdto.getHome_public().split(",")[0]);
			mattress = Integer.parseInt(hdto.getHome_public().split(",")[1]);
			if(sofa != 0 || mattress != 0) {
				pub = true;
			}
		}
		
		
		//좋아요 목록 리스트
		List<LikeyListDTO> likeyList = null;
		if(member_email != null) {
			likeyList = likeyService.getAlldata(member_email);
		}
		
		
		
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("hdto", hdto);
		mav.addObject("getBlockedDate", getBlockedDate);
		mav.addObject("guestReviewList", guestReviewList);
		mav.addObject("hostReviewList", hostReviewList);
		mav.addObject("page", page);
		mav.addObject("hddto", hddto);
		mav.addObject("memberDTO", memberDTO);
		mav.addObject("amenitiesList", amenitiesList);
		mav.addObject("accessList", accessList);
		mav.addObject("safetyList", safetyList);
		mav.addObject("amenitiesCount", amenitiesCount);
		mav.addObject("rulesList", rulesList);
		mav.addObject("rulesDetailsList", rulesDetailsList);
		mav.addObject("bedroom", bedroom);
		mav.addObject("bathroom", bathroom);
		mav.addObject("bedCount", bedCount);
		mav.addObject("pub", pub);
		mav.addObject("sofa", sofa);
		mav.addObject("mattress", mattress);
		mav.addObject("bedList", bedList);
		mav.addObject("likeyList", likeyList);
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
	public ModelAndView reservReq(ReservationDTO reservationDTO,HttpServletRequest req, HttpSession session) {
		
		String blockedDate = req.getParameter("blockedDate");
		System.out.println(blockedDate);
		
		System.out.println("아이디닌이이이이이"+reservationDTO.getMember_email());
		
		String amount = reservationDTO.getTotalAmount();
		
		reservationDTO.setGuset_review("N");
		reservationDTO.setReservation_seq(1);
		reservationDTO.setTotalAmount(amount.replaceAll("[^0-9]", ""));
		reservationDTO.setNightsAmount(reservationDTO.getNightsAmount().replaceAll("[^0-9]", ""));
		reservationDTO.setCleaningFee(reservationDTO.getCleaningFee().replaceAll("[^0-9]", ""));
		reservationDTO.setServiceFee(reservationDTO.getServiceFee().replaceAll("[^0-9]", ""));
		
		//session에 reservationDTO 정보 저장
		session.setAttribute("ReserveDTO", reservationDTO);
		
		// 홈 정보
		HomeDTO hdto = homeService.getHomeData(reservationDTO.getHome_seq());
		
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        // date1, date2 두 날짜를 parse()를 통해 Date형으로 변환.
        Date FirstDate = null;
        Date SecondDate = null;
		try {
			FirstDate = format.parse(reservationDTO.getReserv_checkin());
			SecondDate = format.parse(reservationDTO.getReserv_checkout());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
        // 연산결과 -950400000. long type 으로 return 된다.
        long calDate = FirstDate.getTime() - SecondDate.getTime(); 
        
        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
        long calDateDays = calDate / ( 24*60*60*1000); 
 
        calDateDays = Math.abs(calDateDays);
		
        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
		
		
		//날짜형식 년월일로 변환
		String checkIn = reservationDTO.getReserv_checkin();
		String checkOut = reservationDTO.getReserv_checkout();
		
		System.out.println(checkIn+ " : " +checkOut);
		
		String checkInDate = null;
		String checkOutDate = null;
		
		if(checkIn != null || checkOut != null) {
			checkInDate = checkIn.split("-")[0] +"년 "+ checkIn.split("-")[1]+"월 "+checkIn.split("-")[2]+"일";
	        checkOutDate = checkOut.split("-")[0] +"년 "+ checkOut.split("-")[1]+"월 "+checkOut.split("-")[2]+"일";
	        
			System.out.println(checkInDate+ " : " +checkOutDate);
		}
		
		//편의시설
		String amenities = hdto.getHome_amenities();
		//사용 가능 공간
		String access = hdto.getHome_guest_access();
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
		mav.addObject("reservationDTO", reservationDTO);
		mav.addObject("hdto", hdto);
		mav.addObject("checkInDate", checkInDate);
		mav.addObject("checkOutDate", checkOutDate);
		mav.addObject("calDateDays", calDateDays);
		mav.addObject("amenities", amenities);
		mav.addObject("access", access);
		mav.addObject("rulesList", rulesList);
		mav.addObject("rulesDetailsList", rulesDetailsList);
		mav.setViewName("home/reservationReq");

		return mav;
		
	}
	
	@RequestMapping("/reservReqToHost.re")
	public ModelAndView reservReqToHost(HttpServletRequest req) throws Exception {
		ReservationDTO reservDTO = (ReservationDTO) req.getSession().getAttribute("ReserveDTO");
		
		System.out.println(reservDTO.getTotalAmount());
		
		int insertReserve = reservService.insertData(reservDTO);
		int home_seq = reservDTO.getHome_seq();
		HomeDTO hdto = homeService.getHomeData(home_seq);
		
		//블락데이트
		String checkinDate = reservDTO.getReserv_checkin();
		String checkoutDate = reservDTO.getReserv_checkout();
		
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
		        
		System.out.println(dates);
		
		String blockedDate = sb.toString();
		
		System.out.println(blockedDate);
		
		int updateBlockDate = homeService.updateBlockedDate(blockedDate, home_seq);
		
		if(updateBlockDate>0) {
			System.out.println("???????");
		}
		
		//메세지
		// 1. 메세지 룸 seq 가 존재하는지 여부 판단후 있을 경우 기존의 seq 넣어주고, 없을 경우 새로운 seq 넣어주기
		MessageRoomDTO roomdto = new MessageRoomDTO();
		roomdto.setHost_email(reservDTO.getHost_email());
		roomdto.setGuest_email(reservDTO.getMember_email());
		roomdto.setHome_seq(home_seq);
		System.out.println("message_room_seq : "+roomdto.getMessage_room_seq());
		MessageRoomDTO messageRoomSeqExist = MessageService.messageRoomSeqExist(roomdto);
		int message_room_seq = 0;
		if (messageRoomSeqExist != null) {
			message_room_seq = messageRoomSeqExist.getMessage_room_seq();
			System.out.println("msgroom정보 이미 존재");
		} else {
			int messageRoomSeq = MessageService.getRoomSeq();
			message_room_seq = messageRoomSeq;

			//날짜형식 년월일로 변환
			String checkIn = reservDTO.getReserv_checkin();
			String checkOut = reservDTO.getReserv_checkout();
			
			System.out.println(checkIn+ " : " +checkOut);
			
			String checkInDate = null;
			String checkOutDate = null;
			
			if(checkIn != null || checkOut != null) {
				checkInDate = checkIn.split("-")[1]+"월 "+checkIn.split("-")[2]+"일";
		        checkOutDate = checkOut.split("-")[1]+"월 "+checkOut.split("-")[2]+"일";
		        
				System.out.println(checkInDate+ " : " +checkOutDate);
			}
			
			roomdto.setMessage_room_seq(message_room_seq);
			roomdto.setHome_seq(home_seq);
			roomdto.setHost_email(reservDTO.getHost_email());
			roomdto.setGuest_email(reservDTO.getMember_email());
			roomdto.setCheckIn(checkInDate);
			roomdto.setCheckOut(checkOutDate);
			roomdto.setTotalNumber(reservDTO.getPopulation());
			int messageInfoInsert = MessageService.messageRoomInsert(roomdto);
			if (messageInfoInsert > 0) {
				System.out.println("msgroom정보 입력에 성공!");
			}
			
			
			
		}

		System.out.println("message_room_seq= " + message_room_seq);
		
		//멤버 이름
		MemberDTO memberDTO = memberService.printProfile(reservDTO.getMember_email());
		
		System.out.println("이름??"+reservDTO.getMember_email());
		
		System.out.println(memberDTO.getMember_email());

		MessageDTO messageDTO = new MessageDTO();
		
		messageDTO.setMessage_room_seq(message_room_seq);
		messageDTO.setHome_seq(home_seq);
		messageDTO.setFromID(reservDTO.getMember_email());
		messageDTO.setToID(reservDTO.getHost_email());
		messageDTO.setMessage_content(memberDTO.getMember_name()+"님의 예약 요청 입니다.");
		
		// 2. 얻어낸 메세지 룸 seq와 함께 메세지테이블에 데이터 넣기
		int messageInsertResult = this.MessageService.messageInsert(messageDTO);
		if (messageInsertResult > 0) {
			System.out.println("메세지 전송 완료!");
			 System.out.println("message_seq : "+messageDTO.getMessage_seq());
			 
			//실제 메세지 보내기
			  MemberDTO mGuest=memberService.printProfile(reservDTO.getMember_email());
			  MemberDTO mHost=memberService.printProfile(reservDTO.getHost_email());
             
			  DetailDTO getMessageAfterSend=MessageService.getMsgAfterSend(messageDTO.getMessage_seq());
			  System.out.println("진짜 문자 보낼 내용 : "+getMessageAfterSend.getMessage_content());
		      String to = "82" +mHost.getMember_phone();
		      String from = "33644643087";
		      String message =  URLEncoder.encode("[Villim] : "+mGuest.getMember_name()+", "+getMessageAfterSend.getCheckIn()+" - "+getMessageAfterSend.getCheckOut()+", '"+getMessageAfterSend.getMessage_content()+"'","UTF-8");
		      String sendUrl = "https://www.proovl.com/api/send.php?user=6394162&token=mZJb0hlGqKxlgbpx4GqNTH4lX0aNAQ04";
		    
		      StringBuilder sb2 = new StringBuilder();
		      sb2.append(sendUrl);
		      sb2.append("&to=" + to);
		      sb2.append("&from=" + from);
		      sb2.append("&text=" + message);

		      System.out.println(sb2.toString());

		      try {
		         URL url = new URL(sb2.toString());
		         HttpURLConnection con = (HttpURLConnection) url.openConnection();
		         int result = con.getResponseCode();
		         System.out.println(result);
		         con.disconnect();
		      }catch(Exception e) {
		    	  e.printStackTrace();
		      }
		         //
			
			
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("insertReserve", insertReserve);
		mav.addObject("home_seq", home_seq);
		mav.setViewName("home/reservationProc");

		return mav;
		
	}
	
	@RequestMapping("/acceptReserv.re")
	public ModelAndView acceptReserv(HttpServletRequest req) throws Exception {
		int reservation_Seq = Integer.parseInt(req.getParameter("seq"));
		int message_room_seq = Integer.parseInt(req.getParameter("roomSeq"));

		System.out.println("acceptReserv지혜언니가 수락했을때~!!!");
		System.out.println("reservation_seq : "+reservation_Seq);
		System.out.println("message_room_seq : "+message_room_seq);
		//예약상태 업데이트 (1:예약 완료)
		int updateState = reservService.updateReservState(reservation_Seq, 1);
		
		//reservationDTO
		ReservationDTO reservationDTO = reservService.getReservationData(reservation_Seq);
		
		//메세지
		//날짜형식 년월일로 변환
		String checkIn = reservationDTO.getReserv_checkin();
		String checkOut = reservationDTO.getReserv_checkout();

		System.out.println(checkIn+ " : " +checkOut);

		String checkInDate = null;
		String checkOutDate = null;

		if(checkIn != null || checkOut != null) {
			checkInDate = checkIn.split("-")[1]+"월 "+checkIn.split("-")[2]+"일";
			checkOutDate = checkOut.split("-")[1]+"월 "+checkOut.split("-")[2]+"일";

			System.out.println(checkInDate+ " : " +checkOutDate);
		}

		//message_room 존재여부 확인
		if(message_room_seq >0) {
			System.out.println("msgroom정보 이미 존재");
		}

		//멤버 이름
		MemberDTO memberDTO = memberService.printProfile(reservationDTO.getHost_email());

		MessageDTO messageDTO = new MessageDTO();

		messageDTO.setMessage_room_seq(message_room_seq);
		messageDTO.setHome_seq(reservationDTO.getHome_seq());
		messageDTO.setFromID(reservationDTO.getHost_email());
		messageDTO.setToID(reservationDTO.getMember_email());
		messageDTO.setMessage_content(memberDTO.getMember_name()+"님이 예약 요청을 수락했습니다");

		// 2. 얻어낸 메세지 룸 seq와 함께 메세지테이블에 데이터 넣기
		int messageInsertResult = this.MessageService.messageInsert(messageDTO);
		if (messageInsertResult > 0) {
			System.out.println("메세지 전송 완료!");
			
			//실제 메세지 보내기
			  MemberDTO mGuest=memberService.printProfile(reservationDTO.getMember_email());
			  
              System.out.println("msg_seq : "+messageInsertResult);
			  DetailDTO getMessageAfterSend=MessageService.getMsgAfterSend(messageDTO.getMessage_seq());
			  
		      String to = "82" +mGuest.getMember_phone();
		      String from = "33644643087";
		      String message =  URLEncoder.encode("[Villim] : "+mGuest.getMember_name()+", "+getMessageAfterSend.getCheckIn()+" - "+getMessageAfterSend.getCheckOut()+", '"+getMessageAfterSend.getMessage_content()+"'","UTF-8");
		      String sendUrl = "https://www.proovl.com/api/send.php?user=6394162&token=mZJb0hlGqKxlgbpx4GqNTH4lX0aNAQ04";
		    
		      StringBuilder sb = new StringBuilder();
		      sb.append(sendUrl);
		      sb.append("&to=" + to);
		      sb.append("&from=" + from);
		      sb.append("&text=" + message);

		      System.out.println(sb.toString());

		      try {
		         URL url = new URL(sb.toString());
		         HttpURLConnection con = (HttpURLConnection) url.openConnection();
		         int result = con.getResponseCode();
		         System.out.println(result);
		         con.disconnect();
		      }catch(Exception e) {
		    	  e.printStackTrace();
		      }
		         //
			
		}

		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");

		return mav;
	}
	
	@RequestMapping("/paymentProc.re")
	public ModelAndView paymentProc(HttpServletRequest req) {
		int reservation_seq = Integer.parseInt(req.getParameter("reserv_seq"));
		
		System.out.println(reservation_seq);
		
		ReservationDTO reservationDTO = reservService.getReservationData(reservation_seq);
		HomeDTO hdto = homeService.getHomeData(reservationDTO.getHome_seq());
		
		//날짜형식 년월일로 변환
		String checkIn = reservationDTO.getReserv_checkin();
		String checkOut = reservationDTO.getReserv_checkout();

		System.out.println(checkIn+ " : " +checkOut);

		String checkInDate = null;
		String checkOutDate = null;

		if(checkIn != null || checkOut != null) {
			checkInDate = checkIn.split("-")[0] +"년 "+ checkIn.split("-")[1]+"월 "+checkIn.split("-")[2]+"일";
			checkOutDate = checkOut.split("-")[0] +"년 "+ checkOut.split("-")[1]+"월 "+checkOut.split("-")[2]+"일";

			System.out.println(checkInDate+ " : " +checkOutDate);
		}
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        // date1, date2 두 날짜를 parse()를 통해 Date형으로 변환.
        Date FirstDate = null;
        Date SecondDate = null;
		try {
			FirstDate = format.parse(reservationDTO.getReserv_checkin());
			SecondDate = format.parse(reservationDTO.getReserv_checkout());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        // Date로 변환된 두 날짜를 계산한 뒤 그 리턴값으로 long type 변수를 초기화 하고 있다.
        // 연산결과 -950400000. long type 으로 return 된다.
        long calDate = FirstDate.getTime() - SecondDate.getTime(); 
        
        // Date.getTime() 은 해당날짜를 기준으로1970년 00:00:00 부터 몇 초가 흘렀는지를 반환해준다. 
        // 이제 24*60*60*1000(각 시간값에 따른 차이점) 을 나눠주면 일수가 나온다.
        long calDateDays = calDate / ( 24*60*60*1000); 
 
        calDateDays = Math.abs(calDateDays);
		
        System.out.println("두 날짜의 날짜 차이: "+calDateDays);
				
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reservationDTO", reservationDTO);
		mav.addObject("checkInDate", checkInDate);
		mav.addObject("checkOutDate", checkOutDate);
		mav.addObject("hdto", hdto);
		mav.addObject("calDateDays", calDateDays);
		mav.setViewName("home/payment");

		return mav;
		
	}
	
	@RequestMapping("/payment.re")
	public ModelAndView payment(HttpServletRequest req) {
		int reservation_seq = Integer.parseInt(req.getParameter("seq"));
		
		System.out.println("결제완료 seq"+reservation_seq);
		
		//예약 정보
		ReservationDTO reservationDTO = reservService.getReservationData(reservation_seq);
		
		
		PaymentDTO paymentDTO = new PaymentDTO();
		paymentDTO.setHome_seq(reservationDTO.getHome_seq());
		paymentDTO.setMember_email(reservationDTO.getMember_email());
		paymentDTO.setReservation_seq(reservation_seq);
		paymentDTO.setCheckIn(reservationDTO.getReserv_checkin());
		paymentDTO.setCheckOut(reservationDTO.getReserv_checkout());
		paymentDTO.setPayment_amount(reservationDTO.getTotalAmount());
		
		//결제 테이블
		int paymentResult = paymentService.insertDate(paymentDTO);
		//예약 상태 (4:결제완료)
		int updateState = reservService.updateReservState(reservationDTO.getReservation_seq(), 4);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("paymentResult", paymentResult);
		mav.setViewName("home/paymentProc");

		return mav;
		
	}
	
	@RequestMapping("/likeList.do")
	public void makeLikeList(HttpServletRequest req, HttpServletResponse response) {
		String member_email = req.getSession().getAttribute("login_email").toString();
		String likeyListName = req.getParameter("likeyListName");
		
		LikeyListDTO likeyListDTO = new LikeyListDTO();
		likeyListDTO.setLikeyList_name(likeyListName);
		likeyListDTO.setMember_email(member_email);
		
		
		int addLikeyListResult = likeyService.insertDate(likeyListDTO);
		
		List<LikeyListDTO> likeyList = likeyService.getAlldata(member_email);
		
		Map<String, Object> reviewmap = new HashMap<String, Object>();
		
		reviewmap.put("likeyList", likeyList);
		
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		
		try {
			new Gson().toJson(reviewmap,response.getWriter());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
}
