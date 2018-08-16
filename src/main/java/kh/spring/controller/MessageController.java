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
		String host_name="Sarah Son";String host_picture="지창욱.jpg"; int home_price=50000;String home_type="아파트";String home_pic_name="plmn집사진.jpg";
        
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
		mav.addObject("home_pic_name", home_pic_name);
		mav.addObject("reviewCount", reviewCount);
		mav.addObject("Q1", Q1);
		mav.addObject("Q2", Q2);
		mav.addObject("Q3", Q3);
		mav.setViewName("/message/messageSend");
		return mav;
	}
	
	@RequestMapping("/messageInsertDB.msg")
	public ModelAndView messageInsertDB(HttpSession session,String seq,MessageDTO dto) {
		System.out.println("messageInsertDB");
		session.setAttribute("userId", "jake@gmail.com");
		String userId =(String) session.getAttribute("userId");
		int home_seq=Integer.parseInt(seq);
		 HomeDTO member_emailResult=this.m_service.getMemberEmail(home_seq);
		 dto.setToID(member_emailResult.getMember_email());
		 dto.setFromID(userId);
		System.out.println("formID : "+dto.getFromID()+" / toID: "+dto.getToID()+" / 내용 : "+dto.getMessage_content());
		ModelAndView mav=new ModelAndView();
		mav.setViewName("");
		return mav;
	}
	
	
}
