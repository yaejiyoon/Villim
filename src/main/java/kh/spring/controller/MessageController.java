package kh.spring.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.dto.GuestMsgDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.HomeService;
import kh.spring.interfaces.MemberService;
import kh.spring.interfaces.MessageService;

@Controller
public class MessageController {

	@Autowired
	MessageService service;

	@Autowired
	MemberService m_service;
	
	@Autowired
	private HomeService homeService;
	
	StringBuilder builder=new StringBuilder();

	@RequestMapping("/messageMain.msg")
	public ModelAndView main(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
        String today= "2018년 08월 21일";/*sdf.format(new Date());*/
        System.out.println("오늘 날짜: "+today);
		System.out.println("messageMain");
		/*session.setAttribute("userId", "jake@gmail.com");*/
       session.setAttribute("userId", "plmn855000@gmail.com");
		 /*session.setAttribute("userId", "test@gmail.com");*/
		String userId = (String) session.getAttribute("userId");
        System.out.println("아이디 :"+userId );
		// 여행
		List<GuestMsgDTO> guestMessage = this.service.guestMessageMain(userId);
		List<String> host_email = new ArrayList<>();
        System.out.println("총개수 :"+guestMessage.size());
		if (!guestMessage.isEmpty()) {
			for (GuestMsgDTO tmp : guestMessage) {
				System.out.println("메세지방번호 :  " + tmp.getMessage_room_seq() + "메세지 시퀸스 : " + tmp.getMessage_seq()
						+ "메세지 내용 : " + tmp.getMessage_content()+"메일 : "+tmp.getHost_email()+"날짜 :"+tmp.getMessage_time());
				
				if(today.equals(tmp.getMessage_time().substring(0,13))) {
					System.out.println("근꼐 오늘 같다는겨?");
					tmp.setMessage_time(tmp.getMessage_time().substring(15, 21));
				}else {
					tmp.setMessage_time(tmp.getMessage_time().substring(7, 21));
				}
				
				host_email.add(tmp.getHost_email());
			}

		
			List<MemberDTO> hostMemberInfo = this.service.memberInfo(host_email);
			
			mav.addObject("guestMessage", guestMessage);
			mav.addObject("hostMemberInfo", hostMemberInfo);
			for (MemberDTO tmp : hostMemberInfo) {
				System.out.println("멤버이름: " + tmp.getMember_name() + "멤버 사진 : " + tmp.getMember_picture());
			}
			
			//모든개수
			int guestMsgAllCount = this.service.guestMsgAllCount(userId);
			if (guestMsgAllCount > 0) {
				System.out.println("모든개수 :" + guestMsgAllCount);
				mav.addObject("guestMsgAllCount", guestMsgAllCount);
			}else {
				System.out.println("모든개수 없음");
				mav.addObject("guestMsgAllCount",0);
			}
			//읽지않은개수
			int guestMsgUnreadCount= this.service.guestMsgUnreadCount(userId);
			if(guestMsgUnreadCount>0) {
				System.out.println("읽지않은 개수 :" + guestMsgUnreadCount);
				mav.addObject("guestMsgUnreadCount", guestMsgUnreadCount);
			}else {
				System.out.println("읽지않은개수 없음");
				mav.addObject("guestMsgUnreadCount", 0);
			}
			
		}else {
			System.out.println("guest메세지 없음 !!!!!!!!!!");
			mav.addObject("guestMsgAllCount",0);
			mav.addObject("guestMsgUnreadCount", 0);
		}

		// 호스팅
		List<GuestMsgDTO> hostMessage = this.service.hostMessageMain(userId);
		List<String> guest_email = new ArrayList<>();
		
		if(!hostMessage.isEmpty()) {
			for(GuestMsgDTO tmp:hostMessage) {
				System.out.println("호스트메세지방번호 :  " + tmp.getMessage_room_seq() + "메세지 시퀸스 : " + tmp.getMessage_seq()
				+ "메세지 내용 : " + tmp.getMessage_content()+"메일 : "+tmp.getHost_email()+"게스트메일:"+tmp.getGuest_email()+"날짜 :"+tmp.getMessage_time()+"읽음 여부 :"+tmp.getMessage_read());
				
				guest_email.add(tmp.getGuest_email());
				
				String messageDate=tmp.getMessage_time();
				System.out.println("날짜 : "+messageDate.substring(0,13));
				if(today.equals(messageDate.substring(0,13))) {
					tmp.setMessage_time(tmp.getMessage_time().substring(15, 21));
					System.out.println("수정된 날짜 : "+tmp.getMessage_time());
				}else {
					
					tmp.setMessage_time(messageDate.substring(7, 21));
			
					System.out.println("수정된 날짜 : "+tmp.getMessage_time());
				}
				
				
			}
			
			List<MemberDTO> guestMemberInfo = this.service.memberInfo(guest_email);
		
			mav.addObject("hostMessage", hostMessage);
			mav.addObject("guestMemberInfo", guestMemberInfo);
			for (MemberDTO tmp : guestMemberInfo) {
				System.out.println("멤버이름: " + tmp.getMember_name() + "멤버 사진 : " + tmp.getMember_picture());
			}
			
			//모든 개수
			int hostMsgAllCount = this.service.hostMsgAllCount(userId);
			if (hostMsgAllCount > 0) {
				System.out.println("모든개수 :" + hostMsgAllCount);
				mav.addObject("hostMsgAllCount", hostMsgAllCount);
			}else {
				mav.addObject("hostMsgAllCount", 0);
			}
			
			//읽지않은개수
			int hostMsgUnreadCount=this.service.hostMsgUnreadCount(userId);
			if (hostMsgUnreadCount > 0) {
				System.out.println("읽지않은개수 :" + hostMsgUnreadCount);
				mav.addObject("hostMsgUnreadCount", hostMsgUnreadCount);
			}else {
				System.out.println("읽지않은개수 없음");
				mav.addObject("hostMsgUnreadCount", 0);
			}
			
			
		}else {
			System.out.println("host메세지 없음 !!!!!!!!!!");
			mav.addObject("hostMsgAllCount", 0);
			mav.addObject("hostMsgUnreadCount", 0);
		}
		
		mav.addObject("userId", userId);
		mav.setViewName("/message/messageMain");
		return mav;
	}

	@RequestMapping("/messageSend.msg")
	public ModelAndView messageSend(HttpSession session) {
		System.out.println("messageSend");
		session.setAttribute("userId", "jake@gmail.com");
		String userId = (String) session.getAttribute("userId");
		int home_seq = 1;
		String host_name = "Sarah Son";
		String host_picture = "지창욱.jpg";
		int home_price = 50000;
		String home_type = "아파트";
		String home_main_pic = "plmn집사진.jpg";

		// review 갯수
		int reviewCount = this.service.countReview(home_seq);

		String Q1 = "건물 내 무료 주차";
		String Q2 = "체크인 가능 시간: 19:00 - 00:00";
		String Q3 = "체크인 5일 전까지 취소할 경우 서비스 수수료를 제외한 요금 전액이 환불됩니다.";

		ModelAndView mav = new ModelAndView();
		mav.addObject("host_name", host_name);
		mav.addObject("host_picture", host_picture);
		mav.addObject("home_price", home_price);
		mav.addObject("home_type", home_type);
		mav.addObject("home_main_pic", home_main_pic);
		mav.addObject("reviewCount", reviewCount);
		mav.addObject("Q1", Q1);
		mav.addObject("Q2", Q2);
		mav.addObject("Q3", Q3);
		mav.setViewName("/message/messageSend");
		return mav;
	}

	@RequestMapping("/messageInsertDB.msg")
	public ModelAndView messageInsertDB(HttpSession session, String host_name, MessageDTO dto, MessageRoomDTO roomdto,
			String seq, String checkIn, String checkOut, String number) {
		ModelAndView mav = new ModelAndView();
		System.out.println("messageInsertDB");
		System.out.println("내용 : " + dto.getMessage_content());
		session.setAttribute("userId", "jake@gmail.com");
		String userId = (String) session.getAttribute("userId");

		int home_seq = Integer.parseInt(seq);
		HomeDTO getHomeInfo = this.service.getHomeInfo(home_seq);
		String host_email = getHomeInfo.getMember_email();

		// 1. 메세지 룸 seq 가 존재하는지 여부 판단후 있을 경우 기존의 seq 넣어주고, 없을 경우 새로운 seq 넣어주기
		roomdto.setHost_email(host_email);
		roomdto.setGuest_email(userId);
		roomdto.setHome_seq(home_seq);
		MessageRoomDTO messageRoomSeqExist = this.service.messageRoomSeqExist(roomdto);
		int message_room_seq = 0;
		if (messageRoomSeqExist != null) {
			message_room_seq = messageRoomSeqExist.getMessage_room_seq();
			System.out.println("msgroom정보 이미 존재");
		} else {
			int messageRoomSeq = this.service.getRoomSeq();
			message_room_seq = messageRoomSeq;

			roomdto.setMessage_room_seq(message_room_seq);
			roomdto.setHome_seq(home_seq);
			roomdto.setHost_email(host_email);
			roomdto.setGuest_email(userId);
			roomdto.setCheckIn(checkIn);
			roomdto.setCheckOut(checkOut);
			roomdto.setTotalNumber(Integer.parseInt(number));
			int messageInfoInsert = this.service.messageRoomInsert(roomdto);
			if (messageInfoInsert > 0) {
				System.out.println("msgroom정보 입력에 성공!");
			}
			;
		}

		System.out.println("message_room_seq= " + message_room_seq);

		dto.setMessage_room_seq(message_room_seq);
		dto.setHome_seq(home_seq);
		dto.setFromID(userId);
		dto.setToID(host_email);

		// 2. 얻어낸 메세지 룸 seq와 함께 메세지테이블에 데이터 넣기
		int messageInsertResult = this.service.messageInsert(dto);
		if (messageInsertResult > 0) {
			System.out.println("메세지 전송 완료!");
			mav.addObject("host_name", host_name);
			mav.setViewName("/message/messageInsertConfirm");
		} else {
			mav.setViewName("error");
		}

		return mav;
	}

	@RequestMapping("/messageRoomEnter.msg")
	public ModelAndView messageRoomEnter(HttpSession session,int message_room_seq,int home_seq,String member_picture,String member_name,String member_email,int message_seq) {
		ModelAndView mav = new ModelAndView();
		System.out.println("messageRoomEnter");
        System.out.println("room_seq : "+message_room_seq);
        System.out.println("message_seq : "+message_seq);
        System.out.println("member_email : "+member_email);
/*		session.setAttribute("userId", "jake@gmail.com");*/
		String userId = (String) session.getAttribute("userId");
		
		int readUpdate=this.service.ReadUpdate(message_seq, member_email, userId);
		
		MemberDTO guestInfo=this.m_service.getPhoto(userId);
		mav.addObject("userId", userId);
		mav.addObject("message_room_seq", message_room_seq);
		mav.addObject("home_seq", home_seq);
		mav.addObject("guest_picture", guestInfo.getMember_picture());
        mav.addObject("host_picture", member_picture);
        mav.addObject("host_name", member_name);
        HomeDTO hdto = homeService.getHomeData(home_seq);
        mav.addObject("home_location", hdto.getHome_nation()+" "+hdto.getHome_addr1()+" "+hdto.getHome_addr3());
        mav.addObject("home_price", hdto.getHome_price());

        mav.addObject("host_email", hdto.getMember_email());
        MessageRoomDTO dto=this.service.msgRoomInfo(message_room_seq);
        String cI= "20180"+dto.getCheckIn().split("월")[0]+dto.getCheckIn().split("일")[0].split("월")[1]; String cO="20180"+dto.getCheckOut().split("월")[0]+dto.getCheckOut().split("일")[0].split("월")[1];
        String transCI="2018-"+dto.getCheckIn().split("월")[0]+"-"+dto.getCheckIn().split("일")[0].split("월")[1]; String transCO="2018-"+dto.getCheckOut().split("월")[0]+"-"+dto.getCheckOut().split("일")[0].split("월")[1];
        System.out.println("체크인 시간 : "+cI+" 체크아웃시간: "+cO);
        mav.addObject("splitCheckIn", transCI);
        mav.addObject("splitCheckOut", transCO);
        int amount=hdto.getHome_price();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat sdf2=new SimpleDateFormat("yyyyMMdd");
        String today= sdf.format(new Date());
        System.out.println("오늘 날짜: "+today);
       try {
		Date checkIn=sdf2.parse(cI);
		Date checkOut=sdf2.parse(cO);
		long diffDay=(checkOut.getTime()-checkIn.getTime())/(24*60*60*1000);
		int stayPrice=(int) (amount*diffDay);
		int home_servicefee=(int) (amount*0.05);
		int home_cleaningfee= (int) (amount*0.1);
		System.out.println(diffDay+"박");
        
		int totalPrice=(int) (stayPrice+(hdto.getHome_price()*0.05)+(hdto.getHome_price()*0.1));
        mav.addObject("home_servicefee", home_servicefee);
        mav.addObject("home_cleaningfee",home_cleaningfee);
		mav.addObject("totalPrice", totalPrice);
		mav.addObject("stayPrice", stayPrice);
		mav.addObject("diffDay", diffDay);
	} catch (ParseException e) {
		e.printStackTrace();
	} 
       
       
		List<MessageDTO> message=this.service.getMessage(message_room_seq);
		
		for(MessageDTO tmp:message) {
			if(today.equals(tmp.getMessage_time().substring(0, 13))){
				tmp.setMessage_time(tmp.getMessage_time().substring(14, 20)+"분");
			}else {
				tmp.setMessage_time(tmp.getMessage_time().substring(7,21));
			}
		}
		
		mav.addObject("message", message);
		for(MessageDTO tmp:message) {
			System.out.println(tmp.getMessage_content()+" / "+tmp.getMessage_time());
		}
	    
		ReservationDTO dto2= new ReservationDTO();
		dto2.setMember_email(userId);
		dto2.setHome_seq(home_seq);

		ReservationDTO reservCheck=this.service.reservCheck(dto2);
		if(reservCheck!=null) {
			System.out.println("예약이미 신청 = "+reservCheck.getReserv_state());
			mav.addObject("reservCheck", reservCheck);
		}else {
			System.out.println("예약을 안함 아직");
		}
		
       
        mav.addObject("msgRoom", dto);
        mav.addObject("messageRoomInfo", dto);
		mav.setViewName("/message/messageRoom");
		return mav;

	}
	
	
	
	
	@RequestMapping("/messageSendInRoom.msg")
	public void messageSendInRoom(MessageDTO dto, HttpServletResponse response) throws Exception {
		System.out.println("messageSendInRoom");
		System.out.println("메세지내용 : "+dto.getMessage_content());
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
        String today= sdf.format(new Date());
        System.out.println("오늘 날짜: "+today);
        
		int messageInsertResult=this.service.messageInsert(dto);
		
		System.out.println("시퀸스 : "+dto.getMessage_seq());

		MessageDTO message=this.service.getOneMessage(dto.getMessage_seq());
		
		System.out.println("시간 자르기 : "+message.getMessage_time().substring(0, 13));
			if(today.equals(message.getMessage_time().substring(0, 13))){
				message.setMessage_time(message.getMessage_time().substring(14, 20).split("분")[0]+"분");
				System.out.println("message시간 : "+message.getMessage_time());
			}else {
				message.setMessage_time(message.getMessage_time().substring(7,20));
				System.out.println("message시간 : "+message.getMessage_time());
			}
		
		
		
			System.out.println(message.getMessage_content()+" / "+message.getMessage_time());
			
			/*String m=message.getMessage_content()+":"+message.getMessage_time()+" ";
			
			builder.append(m);
		
            System.out.println(" m : "+m);
			String result=builder.toString();*/
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");

			new Gson().toJson(message, response.getWriter());
		
	}
	
	@RequestMapping("/messageHostRoomEnter.msg")
	public ModelAndView messageHostRoomEnter(HttpSession session,int message_room_seq,int home_seq,String member_picture,String member_name,String member_email,int message_seq) {
		ModelAndView mav = new ModelAndView();
		System.out.println("messageHostRoomEnter");
		System.out.println("room_seq : "+message_room_seq);
		System.out.println("home_seq : "+home_seq);
		System.out.println("message_seq"+message_seq);
		/*session.setAttribute("userId", "plmn855000@gmail.com");*/
		String userId = (String) session.getAttribute("userId");
		
		int readUpdate=this.service.ReadUpdate(message_seq, member_email, userId);
		List<HomeDTO> getHomeNames=this.service.getHomeNames(userId);
	    
		System.out.println("호스트 이메일 : "+userId+" / 게스트 이메일 : "+member_email);
		MemberDTO hostInfo=this.m_service.getPhoto(userId);
		MemberDTO guestInfo=this.m_service.getPhoto(member_email);
		HomeDTO hdto = homeService.getHomeData(home_seq);
		mav.addObject("message_room_seq", message_room_seq);
		mav.addObject("home_seq", home_seq);
		mav.addObject("userId", userId);
		mav.addObject("guest_email", member_email);
		mav.addObject("guest_picture", member_picture);
		mav.addObject("guest_name", member_name);
		mav.addObject("guest_location", guestInfo.getMember_location());
		mav.addObject("host_picture", hostInfo.getMember_picture());
		mav.addObject("getHomeNames", getHomeNames);
		mav.addObject("home_name", hdto.getHome_name());
		System.out.println("가격"+hdto.getHome_price());
		mav.addObject("guest_regdate", guestInfo.getMember_date());
		mav.addObject("home_price", hdto.getHome_price());
		
		
        MessageRoomDTO dto=this.service.msgRoomInfo(message_room_seq);
        String cI= "20180"+dto.getCheckIn().split("월")[0]+dto.getCheckIn().split("일")[0].split("월")[1]; String cO="20180"+dto.getCheckOut().split("월")[0]+dto.getCheckOut().split("일")[0].split("월")[1];
        String transCI="2018-"+dto.getCheckIn().split("월")[0]+"-"+dto.getCheckIn().split("일")[0].split("월")[1]; String transCO="2018-"+dto.getCheckOut().split("월")[0]+"-"+dto.getCheckOut().split("일")[0].split("월")[1];
        System.out.println("체크인 시간 : "+cI+" 체크아웃시간: "+cO);
        mav.addObject("splitCheckIn", transCI);
        mav.addObject("splitCheckOut", transCO);
        long amount=hdto.getHome_price();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat sdf2=new SimpleDateFormat("yyyyMMdd");
        String today= sdf.format(new Date());
        System.out.println("오늘 날짜: "+today);
        
        //날짜 
        String checkinDate ="2018-"+dto.getCheckIn().split("월")[0]+"-"+dto.getCheckIn().split("일")[0].split("월")[1];
        String checkoutDate ="2018-"+dto.getCheckOut().split("월")[0]+"-"+dto.getCheckOut().split("일")[0].split("월")[1];
        
        
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
        
        ArrayList<String> dates = new ArrayList<String>();
        Date currentDate = FirstDate;
        while (currentDate.compareTo(SecondDate) <= 0) {
           dates.add(format.format(currentDate));
           Calendar c = Calendar.getInstance();
           c.setTime(currentDate);
           c.add(Calendar.DAY_OF_MONTH, 1);
           currentDate = c.getTime();
        }
        System.out.println("지혜언니가 준 날짜     >        "+dates);
       String date = dates.toString().replaceAll("[\\[\\]]", "");
        System.out.println("자른거 : "+date);
        
       String[] str=date.split(", ");
       List<String> datess=new ArrayList<>();
       for(String tmp:str) {
    	   datess.add(tmp);
    	   System.out.println(tmp);
       }
       
       for(String tmp:datess) {
    	   System.out.println("최종 보낼 것"+tmp);
       }
        mav.addObject("date", datess);
       try {
		Date checkIn=sdf2.parse(cI);
		Date checkOut=sdf2.parse(cO);
		long diffDay=(checkOut.getTime()-checkIn.getTime())/(24*60*60*1000);
		int stayPrice=(int) (amount*diffDay);
		int home_servicefee=(int) (amount*0.05);
		int home_cleaningfee= (int) (amount*0.1);
        int totalPrice=(int) (stayPrice-(hdto.getHome_price()*0.05)-(hdto.getHome_price()*0.1));
        mav.addObject("home_servicefee", home_servicefee);
        mav.addObject("home_cleaningfee",home_cleaningfee);
		mav.addObject("totalPrice", totalPrice);
		mav.addObject("stayPrice", stayPrice);
		
		String tp=Long.toString(totalPrice);
		System.out.println(diffDay+"박");

		mav.addObject("totalPrice", tp);
		mav.addObject("diffDay", diffDay);
	} catch (ParseException e) {
		e.printStackTrace();
	} 
       
       
		List<MessageDTO> message=this.service.getMessage(message_room_seq);
		
		for(MessageDTO tmp:message) {
			if(today.equals(tmp.getMessage_time().substring(0, 13))){
				tmp.setMessage_time(tmp.getMessage_time().substring(14, 20)+"분");
			}else {
				tmp.setMessage_time(tmp.getMessage_time().substring(7,21));
			}
		}
		mav.addObject("msgRoom", dto);
		mav.addObject("message", message);
		for(MessageDTO tmp:message) {
			System.out.println(tmp.getMessage_content()+" / "+tmp.getMessage_time());
		}
		
		
		ReservationDTO dto2= new ReservationDTO();
		dto2.setMember_email(member_email);
		dto2.setHome_seq(home_seq);
        System.out.println("이메일 : "+dto2.getMember_email()+" / 홈시퀸스 : "+dto2.getHome_seq());
		ReservationDTO reservCheck=this.service.reservCheck(dto2);
		
		if(reservCheck!=null) {
			System.out.println("예약이미 신청 = "+reservCheck.getReserv_state());
			mav.addObject("reservCheck", reservCheck);
		}else {
			
			System.out.println("예약을 안함 아직");
		}
		
		
		mav.setViewName("/message/messageHostRoom");
		return mav;
	
	
	}
	

@RequestMapping("/msgMainGuestAllRead.msg")
public void msgMainGuestAllRead(HttpSession session,HttpServletResponse response) throws Exception{
	System.out.println("msgMainGuestAllRead");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
    String today= sdf.format(new Date());
    System.out.println("오늘 날짜: "+today);
    String userId = (String) session.getAttribute("userId");
	List<GuestMsgDTO> guestAllMessage = this.service.guestMessageMain(userId);
	List<String> host_email = new ArrayList<>();
	
    JSONObject obj=new JSONObject();
    JSONArray jArray=new JSONArray();
	
	if (!guestAllMessage.isEmpty()) {
		for (GuestMsgDTO tmp : guestAllMessage) {
			System.out.println("메세지방번호 :  " + tmp.getMessage_room_seq() + "메세지 시퀸스 : " + tmp.getMessage_seq()
					+ "메세지 내용 : " + tmp.getMessage_content()+"메일 : "+tmp.getHost_email()+"날짜 :"+tmp.getMessage_time());
			
			if(today.equals(tmp.getMessage_time().substring(0,13))) {
				System.out.println("근꼐 오늘 같다는겨?");
				tmp.setMessage_time(tmp.getMessage_time().substring(15, 21));
			}else {
				tmp.setMessage_time(tmp.getMessage_time().substring(7, 21));
			}
			
			host_email.add(tmp.getHost_email());
		}

		for(int i=0;i<guestAllMessage.size();i++) {
			JSONObject gmI=new JSONObject();
    		gmI.put("message_room_seq", guestAllMessage.get(i).getMessage_room_seq());
    		gmI.put("message_seq", guestAllMessage.get(i).getMessage_seq());
    		gmI.put("home_seq", guestAllMessage.get(i).getHome_seq());
    		gmI.put("message_time", guestAllMessage.get(i).getMessage_time());
    		gmI.put("message_content", guestAllMessage.get(i).getMessage_content());
    		gmI.put("checkIn", guestAllMessage.get(i).getCheckIn());
    		gmI.put("checkOut", guestAllMessage.get(i).getCheckOut());
    		gmI.put("message_read", guestAllMessage.get(i).getMessage_read());
    		gmI.put("host_email", guestAllMessage.get(i).getHost_email());
    		jArray.add(gmI);
    	}
    	obj.put("guestAllMsg", jArray);
	
		
		
		
}else {
	System.out.println("게스트가 모든 메세지가 없다니 이럴수가!!!!!!!!");
}
	List<MemberDTO> guestMemberInfo = this.service.memberInfo(host_email);
	
    JSONArray jArray2 = new JSONArray();

    for(int i=0;i<guestMemberInfo.size();i++) {
    	JSONObject gmI=new JSONObject();
    	gmI.put("member_picture", guestMemberInfo.get(i).getMember_picture());
		gmI.put("member_name", guestMemberInfo.get(i).getMember_name());
		gmI.put("member_location", guestMemberInfo.get(i).getMember_location());
		gmI.put("member_email",guestMemberInfo.get(i).getMember_email());
		jArray2.add(gmI);
    }
    obj.put("guestAllMemberInfo", jArray2);
    
   System.out.println(obj);

	response.setContentType("application/json");
	response.setCharacterEncoding("UTF-8");


	new Gson().toJson(obj, response.getWriter());
	
	
}

@RequestMapping("/msgMainGuestUnRead.msg")
public void msgMainGuestUnRead(HttpSession session,HttpServletResponse response) throws Exception {
	System.out.println("msgMainGuestUnRead");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
    String today= sdf.format(new Date());
    System.out.println("오늘 날짜: "+today);
    String userId = (String) session.getAttribute("userId");
    
    List<GuestMsgDTO> guestUnreadMsg=this.service.guestUnreadMsg(userId);
    List<String> host_email = new ArrayList<>();


    JSONObject obj=new JSONObject();
    JSONArray jArray=new JSONArray();
    
    
    if (!guestUnreadMsg.isEmpty()) {
    	for(GuestMsgDTO tmp:guestUnreadMsg) {
        	System.out.println("읽지않은 내용"+tmp.getMessage_content()+"안 읽었니 메세지 리드 : "+tmp.getMessage_read());
        
    	
    	if(today.equals(tmp.getMessage_time().substring(0,13))) {
			System.out.println("근꼐 오늘 같다는겨?");
			tmp.setMessage_time(tmp.getMessage_time().substring(15, 21));
		}else {
			
			tmp.setMessage_time(tmp.getMessage_time().substring(7, 21));
			System.out.println(tmp.getMessage_time());
		}
    	
    	host_email.add(tmp.getHost_email());
    	
    	
    	
    	}
    	for(int i=0;i<guestUnreadMsg.size();i++) {
    		JSONObject gmI=new JSONObject();
    		gmI.put("message_room_seq", guestUnreadMsg.get(i).getMessage_room_seq());
    		gmI.put("message_seq", guestUnreadMsg.get(i).getMessage_seq());
    		gmI.put("home_seq", guestUnreadMsg.get(i).getHome_seq());
    		gmI.put("message_time", guestUnreadMsg.get(i).getMessage_time());
    		gmI.put("message_content", guestUnreadMsg.get(i).getMessage_content());
    		gmI.put("checkIn", guestUnreadMsg.get(i).getCheckIn());
    		gmI.put("checkOut", guestUnreadMsg.get(i).getCheckOut());
    		gmI.put("message_read", guestUnreadMsg.get(i).getMessage_read());
    		gmI.put("host_email", guestUnreadMsg.get(i).getHost_email());
    		jArray.add(gmI);
    	}
    	obj.put("guestUnreadMsg", jArray);
    	
    
    	
    }else {
    	
    	System.out.println("게스트가 안 읽은 메세지가 없다니 이럴수가!!!!!!!!");
    }
    List<MemberDTO> guestMemberInfo = this.service.memberInfo(host_email);

    JSONArray jArray2 = new JSONArray();

    for(int i=0;i<guestMemberInfo.size();i++) {
    	JSONObject gmI=new JSONObject();
    	gmI.put("member_picture", guestMemberInfo.get(i).getMember_picture());
		gmI.put("member_name", guestMemberInfo.get(i).getMember_name());
		gmI.put("member_location", guestMemberInfo.get(i).getMember_location());
		gmI.put("member_email",guestMemberInfo.get(i).getMember_email());
		jArray2.add(gmI);
    }
    obj.put("guestMemberInfo", jArray2);
    
   System.out.println(obj);

	response.setContentType("application/json");
	response.setCharacterEncoding("UTF-8");


	new Gson().toJson(obj, response.getWriter());

}

@RequestMapping("/msgMainhostUnRead.msg")
public void msgMainhostUnRead(HttpSession session,HttpServletResponse response) throws Exception {
	System.out.println("msgMainhostUnRead");
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
    String today= sdf.format(new Date());
    System.out.println("오늘 날짜: "+today);
    String userId = (String) session.getAttribute("userId");
    
    List<GuestMsgDTO> hostUnreadMsg=this.service.hostUnreadMsg(userId);
    List<String> guest_email = new ArrayList<>();


    JSONObject obj=new JSONObject();
    JSONArray jArray=new JSONArray();
	
    if (!hostUnreadMsg.isEmpty()) {
    	for(GuestMsgDTO tmp:hostUnreadMsg) {
        	System.out.println("읽지않은 내용"+tmp.getMessage_content()+"안 읽었니 메세지 리드 : "+tmp.getMessage_read());
        
    	
    	if(today.equals(tmp.getMessage_time().substring(0,13))) {
			System.out.println("근꼐 오늘 같다는겨?");
			tmp.setMessage_time(tmp.getMessage_time().substring(15, 21));
		}else {
			
			tmp.setMessage_time(tmp.getMessage_time().substring(7, 21));
			System.out.println(tmp.getMessage_time());
		}
    	
    	guest_email.add(tmp.getGuest_email());
    	
    	
    	
    	}
    	for(int i=0;i<hostUnreadMsg.size();i++) {
    		JSONObject gmI=new JSONObject();
    		gmI.put("message_room_seq", hostUnreadMsg.get(i).getMessage_room_seq());
    		gmI.put("message_seq", hostUnreadMsg.get(i).getMessage_seq());
    		gmI.put("home_seq", hostUnreadMsg.get(i).getHome_seq());
    		gmI.put("message_time", hostUnreadMsg.get(i).getMessage_time());
    		gmI.put("message_content", hostUnreadMsg.get(i).getMessage_content());
    		gmI.put("checkIn", hostUnreadMsg.get(i).getCheckIn());
    		gmI.put("checkOut", hostUnreadMsg.get(i).getCheckOut());
    		gmI.put("message_read", hostUnreadMsg.get(i).getMessage_read());
    		gmI.put("host_email", hostUnreadMsg.get(i).getHost_email());
    		jArray.add(gmI);
    	}
    	obj.put("hostUnreadMsg", jArray);
    	
    
    	
    }else {
    	
    	System.out.println("게스트가 안 읽은 메세지가 없다니 이럴수가!!!!!!!!");
    }
    List<MemberDTO> guestMemberInfo = this.service.memberInfo(guest_email);

    JSONArray jArray2 = new JSONArray();

    for(int i=0;i<guestMemberInfo.size();i++) {
    	JSONObject gmI=new JSONObject();
    	gmI.put("member_picture", guestMemberInfo.get(i).getMember_picture());
		gmI.put("member_name", guestMemberInfo.get(i).getMember_name());
		gmI.put("member_location", guestMemberInfo.get(i).getMember_location());
		gmI.put("member_email",guestMemberInfo.get(i).getMember_email());
		jArray2.add(gmI);
    }
    obj.put("guestMemberInfo", jArray2);
    
   System.out.println(obj);

	response.setContentType("application/json");
	response.setCharacterEncoding("UTF-8");


	new Gson().toJson(obj, response.getWriter());
	
	
}



@RequestMapping("/msgMainHostAllRead.msg")
public void msgMainHostAllRead(HttpSession session,HttpServletResponse response) throws Exception {
	System.out.println("msgMainHostAllRead");
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
    String today= sdf.format(new Date());
    System.out.println("오늘 날짜: "+today);
    String userId = (String) session.getAttribute("userId");
    
    List<GuestMsgDTO> hostMessage = this.service.hostMessageMain(userId);
	List<String> guest_email = new ArrayList<>();



    JSONObject obj=new JSONObject();
    JSONArray jArray=new JSONArray();
	
    if (!hostMessage.isEmpty()) {
    	for(GuestMsgDTO tmp:hostMessage) {
        	System.out.println("읽지않은 내용"+tmp.getMessage_content()+"안 읽었니 메세지 리드 : "+tmp.getMessage_read());
        
    	
    	if(today.equals(tmp.getMessage_time().substring(0,13))) {
			System.out.println("근꼐 오늘 같다는겨?");
			tmp.setMessage_time(tmp.getMessage_time().substring(15, 21));
		}else {
			
			tmp.setMessage_time(tmp.getMessage_time().substring(7, 21));
			System.out.println(tmp.getMessage_time());
		}
    	
    	guest_email.add(tmp.getGuest_email());
    	
    	
    	
    	}
    	for(int i=0;i<hostMessage.size();i++) {
    		JSONObject gmI=new JSONObject();
    		gmI.put("message_room_seq", hostMessage.get(i).getMessage_room_seq());
    		gmI.put("message_seq", hostMessage.get(i).getMessage_seq());
    		gmI.put("home_seq", hostMessage.get(i).getHome_seq());
    		gmI.put("message_time", hostMessage.get(i).getMessage_time());
    		gmI.put("message_content", hostMessage.get(i).getMessage_content());
    		gmI.put("checkIn", hostMessage.get(i).getCheckIn());
    		gmI.put("checkOut", hostMessage.get(i).getCheckOut());
    		gmI.put("message_read", hostMessage.get(i).getMessage_read());
    		gmI.put("host_email", hostMessage.get(i).getHost_email());
    		jArray.add(gmI);
    	}
    	obj.put("hostAllMessage", jArray);
    	
    
    	
    }else {
    	
    	System.out.println("게스트가 안 읽은 메세지가 없다니 이럴수가!!!!!!!!");
    }
    List<MemberDTO> guestMemberInfo = this.service.memberInfo(guest_email);

    JSONArray jArray2 = new JSONArray();

    for(int i=0;i<guestMemberInfo.size();i++) {
    	JSONObject gmI=new JSONObject();
    	gmI.put("member_picture", guestMemberInfo.get(i).getMember_picture());
		gmI.put("member_name", guestMemberInfo.get(i).getMember_name());
		gmI.put("member_location", guestMemberInfo.get(i).getMember_location());
		gmI.put("member_email",guestMemberInfo.get(i).getMember_email());
		jArray2.add(gmI);
    }
    obj.put("guestAllMemberInfo", jArray2);
    
   System.out.println(obj);

	response.setContentType("application/json");
	response.setCharacterEncoding("UTF-8");


	new Gson().toJson(obj, response.getWriter());
	
	
	
	
	
	
	
	
	
}






}



