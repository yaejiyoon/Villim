package kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
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
		JSONObject json = null;
		
		

		for(MemberDTO tmp:result) {
			
			json = new JSONObject();
			json.put("member_seq", tmp.getMember_seq());
			json.put("member_email", tmp.getMember_email());
			json.put("member_name", tmp.getMember_name());
			json.put("member_birth", tmp.getMember_birth());
			json.put("member_picture", tmp.getMember_picture());
			json.put("member_block", tmp.getMember_block());
			json.put("member_date", tmp.getMember_date());
			json.put("member_location", tmp.getMember_location());
			array.add(json);
			
		}
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		System.out.println(array.size());
		for(int i=0; i<array.size(); i++) {
		System.out.println(array.get(i) + "");
		}
		try {
			
		new Gson().toJson(array, response.getWriter());
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
