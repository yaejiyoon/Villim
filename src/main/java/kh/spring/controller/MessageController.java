package kh.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;
import kh.spring.interfaces.MemberService;
import kh.spring.interfaces.MessageService;

@Controller
public class MessageController {

	@Autowired
	MessageService service;
	
	@Autowired
	MemberService m_service;
	
	@RequestMapping("/messageMain.msg")
	public String main() {
		System.out.println("messageMain");
		return "/message/messageMain";
	}
	
	@RequestMapping("/messageSend.msg")
	public ModelAndView messageSend(HttpSession session) {
		System.out.println("messageSend");
		session.setAttribute("userId", "jake@gmail.com");
		String userId =(String) session.getAttribute("userId");
		int home_seq=1; 
		String host_name="Sarah Son";String host_picture="지창욱.jpg"; int home_price=50000;String home_type="아파트";String home_main_pic="plmn집사진.jpg";
        
		//review 갯수
		int reviewCount=this.service.countReview(home_seq);
		
		String Q1="건물 내 무료 주차";
		String Q2="체크인 가능 시간: 19:00 - 00:00";
		String Q3="체크인 5일 전까지 취소할 경우 서비스 수수료를 제외한 요금 전액이 환불됩니다.";
		
		ModelAndView mav=new ModelAndView();
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
	public ModelAndView messageInsertDB(HttpSession session,String host_name,MessageDTO dto,MessageRoomDTO roomdto,String seq,String checkIn,String checkOut,String number) {
		ModelAndView mav=new ModelAndView();
		System.out.println("messageInsertDB");
		System.out.println("내용 : "+dto.getMessage_content());
		session.setAttribute("userId", "jake@gmail.com");
		String userId =(String) session.getAttribute("userId");
		
		int home_seq=Integer.parseInt(seq);
		HomeDTO getHomeInfo= this.service.getHomeInfo(home_seq);
        String host_email=getHomeInfo.getMember_email();
		
	//1. 메세지 룸 seq 가 존재하는지 여부 판단후 있을 경우 기존의 seq 넣어주고, 없을 경우 새로운 seq 넣어주기
        roomdto.setHost_email(host_email);roomdto.setGuest_email(userId);roomdto.setHome_seq(home_seq);
        MessageRoomDTO messageRoomSeqExist=this.service.messageRoomSeqExist(roomdto);
		int message_room_seq=0;
		if(messageRoomSeqExist!=null) {
			message_room_seq=messageRoomSeqExist.getMessage_room_seq();
			System.out.println("msgroom정보 이미 존재");
		}else {
			 int messageRoomSeq=this.service.getRoomSeq();
			 message_room_seq=messageRoomSeq;
			
			 roomdto.setMessage_room_seq(message_room_seq);
             roomdto.setHome_seq(home_seq);
             roomdto.setHost_email(host_email);
             roomdto.setGuest_email(userId);
             roomdto.setCheckIn(checkIn);
             roomdto.setCheckOut(checkOut);
             roomdto.setTotalNumber(Integer.parseInt(number));
			 int messageInfoInsert=this.service.messageRoomInsert(roomdto);
			if(messageInfoInsert>0) {System.out.println("msgroom정보 입력에 성공!");};
		}
		
		System.out.println("message_room_seq= "+message_room_seq);
		
		dto.setMessage_room_seq(message_room_seq);
		dto.setHome_seq(home_seq);
		dto.setFromID(userId);
		dto.setToID(host_email);
		
	//2. 얻어낸 메세지 룸 seq와 함께 메세지테이블에 데이터 넣기
		int messageInsertResult=this.service.messageInsert(dto);
		if(messageInsertResult>0) {
			System.out.println("메세지 전송 완료!");
		    mav.addObject("host_name",host_name);
			mav.setViewName("/message/messageInsertConfirm");
		}else {
			mav.setViewName("error");
		}
		
		return mav;
	}
	
	
}
