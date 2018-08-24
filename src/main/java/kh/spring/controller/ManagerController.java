package kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberService;

@Controller
public class ManagerController {
	
	@Autowired
	MemberService service;
	
/*	@Autowired
	MemberDTO dto;
*/
	
	@RequestMapping("/manager.admin")
	public String managerMain(HttpServletRequest request) {	
		return "manager/manager";
		
	}
	@RequestMapping("/main.admin")
	public String main(HttpServletRequest request) {
		
		return "manager/main";	
	}
	@RequestMapping("mainMemberCountLoad.admin")
	public void mainMemberLoad(HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		String result = service.getAllMemberCountData();
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		try {
		new Gson().toJson(result, response.getWriter());
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("mainMemberInfoLoad.admin")
	public void mainMemberInfoLoad(HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		List<MemberDTO> result = service.getAllMemberData();
		JSONArray array = new JSONArray();
		
		for(MemberDTO tmp:result) {
		  System.out.println(tmp.getMember_seq());
		}
//		for(MemberDTO tmp:result) {
			
			
//			array.add(tmp.getMember_seq()+":"+tmp.getMember_email()+":"+tmp.getMember_name()+
//				":" +tmp.getMember_birth() + ":" + tmp.getMember_picture() + ":" + 
//				":" +tmp.getMember_block() + ":" + tmp.getMember_date() + ":" +
//				":" +tmp.getMember_location());
		
//		}
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		try {
			
		new Gson().toJson(array, response.getWriter());
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
