package kh.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberService;

@Controller
public class MemberController {

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Autowired
	private MemberService service;

	@RequestMapping("/profileEditView.mo")
	public ModelAndView profileEditView(String member_email,HttpSession session) {
		dto.setMember_email("plmn855000@gmail.com");
		MemberDTO result=this.service.printProfile(member_email);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("result",result);
		String success=(String) session.getAttribute("updateSuccess");
		MemberDTO result2=this.service.printProfile();
		if(success!=null) {
			mav.addObject("inputSuccess",success);
			mav.addObject("result",result);
			mav.setViewName("/profile/profileEdit");
			session.removeAttribute("updateSuccess");
			System.out.println("null일때 :"+success);
		}else{
			mav.addObject("result",result);
			System.out.println("null이 아닐때 :"+success);
			mav.setViewName("/profile/profileEdit");
		}
		
	    System.out.println(result.getMember_name());
	    return mav;
}
	
	@RequestMapping("/editProfile.mo")
	public String profileEdit(MemberDTO dto,String year,String month,String day,HttpSession session) {
		dto.setMember_birth(year+"년"+month+"월"+day+"일");
		String result=this.service.editProfile(dto);
		if(result!=null) {
	      session.setAttribute("updateSuccess", result);
		}
		ModelAndView mav=new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName("/profileEditView.mo");
		
		return "redirect:profileEditView.mo";
		
	}
	

	
	
}
