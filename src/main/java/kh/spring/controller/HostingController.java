package kh.spring.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;

@Controller
public class HostingController {
	
	@Autowired
	
	@RequestMapping("/first.host")
	public String toFirst() {
		//string <- 스프링이 해석함 
		return "hosting/hostFirstpage";
	}
	
	@RequestMapping("/second.host")
	public String toSecond() {
		//string <- 스프링이 해석함 
		return "hosting/hostSecondpage";
	}
	
	@RequestMapping("/third.host")
	public String toThird() {
		//string <- 스프링이 해석함 
		return "hosting/hostThirdpage";
	}
	
	@RequestMapping("/fore.host")
	public String toForth() {
		//string <- 스프링이 해석함 
		return "hosting/hostForthpage";
	}
	
	@RequestMapping("/five.host")
	public String toFive() {
		//string <- 스프링이 해석함 
		return "hosting/hostFivehpage";
	}
	
	
	@RequestMapping("/step2fisrt.host")
	public String Step2First() {
		//string <- 스프링이 해석함 
		return "hosting/step2HostFirstpage";
	}
	
	@RequestMapping("/step2second.host")
	public String Step2Second() {
		//string <- 스프링이 해석함 
		return "hosting/step2HostSecondpage";
	}
	
	@RequestMapping("/step2third.host")
	public String Step2Third() {
		//string <- 스프링이 해석함 
		return "hosting/step2HostThirdpage";
	}
	
	
	@RequestMapping(value = "/listcall.do", method = RequestMethod.GET)
	public @ResponseBody void home( @RequestParam("val") String id, HttpServletRequest request , HttpServletResponse response) throws JsonIOException, IOException {
	JSONArray jarray = new JSONArray();
	String valuebulid = id;
	response.setCharacterEncoding("utf8");
	response.setContentType("application/json");
	System.out.println(valuebulid);
	Map<String, String> resultMap = new HashMap<>();
	if(valuebulid.equals("apartments")) {
		JSONObject json = new JSONObject();
		json.put("vale",valuebulid);
		jarray.add(json);
	}else if(valuebulid.equals("houses")) {
		JSONObject json = new JSONObject();
		json.put("vale",valuebulid);
		jarray.add(json);
	}else if(valuebulid.equals("secondary_units")) {
		JSONObject json = new JSONObject();
		json.put("vale",valuebulid);
		jarray.add(json);
	}else if(valuebulid.equals("unique_homes")) {
		JSONObject json = new JSONObject();
		json.put("vale",valuebulid);
		jarray.add(json);
	}else if(valuebulid.equals("bnb")) {
		JSONObject json = new JSONObject();
		json.put("vale",valuebulid);
		jarray.add(json);
	}else if(valuebulid.equals("boutique_hotels_and_more")) {
		JSONObject json = new JSONObject();
		json.put("vale",valuebulid);
		jarray.add(json);
	}
	System.out.println(jarray);
	
	new Gson().toJson(jarray, response.getWriter());

}
	
	
	@RequestMapping(value = "/textis.ho", method = RequestMethod.POST)
	public @ResponseBody  void vone(@RequestParam("val") String val , HttpServletRequest request , HttpServletResponse response)throws Exception {
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		String valuebulid = val;
		JSONArray jarray = new JSONArray();
		JSONObject json = new JSONObject();
		json.put("vale", valuebulid);
		jarray.add(valuebulid);
		new Gson().toJson(jarray, response.getWriter());
	}
	
}
