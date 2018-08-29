package kh.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebEndpoint;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@ResponseBody
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
	@ResponseBody
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
	@RequestMapping("mainMemberBlock.admin")
	public void mainMemberBlock(HttpServletRequest request,HttpServletResponse response) {
		String arr = request.getParameter("currentarray");
		List<String> list = new ArrayList<>();
		System.out.println(arr);
		JSONParser parser = new JSONParser();
		try {
		Object obj = parser.parse(arr);
		JSONArray jsonArr = (JSONArray) obj;
		for(int i=0; i<jsonArr.size(); i++) {
			
			System.out.println(jsonArr.get(i));
			JSONObject jsonObj = (JSONObject) jsonArr.get(i);
			String seq = (String)jsonObj.get("seq");
			String val = (String)jsonObj.get("val");
			String sum = seq + ":" + val;
			list.add(sum);
			
		}
		
		for(int j=0; j<list.size(); j++) {
			System.out.println(list.get(j));
		}
//		String seq = (String)jsonArr.get(index);
//		String val = (String)jsonArr.get("val");
//		System.out.println(seq + ":" + val + "seq 와  val 값");
//		System.out.println(jsonObj + "- jsonobject 값");
		int result = service.memberBlock(list);
		
		if(result==list.size()) {
			String msg = "성공";
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			new Gson().toJson(msg, response.getWriter());
		}else {
			String msg = "실패";
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			new Gson().toJson(msg, response.getWriter());
		}
//		JSONArray jsonarray = new JSONArray();
//		JSONObject json =  new JSONObject();
		}catch(Exception e) {
			e.printStackTrace();
		}

	
//		JSONObject jsonObject = JSONObject.fromObject(arr);
//		System.out.println(jsonObject);
	
		
	}
	@RequestMapping("mainTest.admin")
	public String mainTest() {
		
		return "jaehotest";
	}
}
