package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HostingController {
	
	@Autowired
	
	@RequestMapping("/fisrt.host")
	public String toFirst() {
		//string <- 스프링이 해석함 
		return "hostFirestpage.jsp";
	}
	
	@RequestMapping("/second.host")
	public String toSecond() {
		//string <- 스프링이 해석함 
		return "hostSecondpage.jsp";
	}
	
	@RequestMapping("/third.host")
	public String toThird() {
		//string <- 스프링이 해석함 
		return "hostThirdpage.jsp";
	}
	
	@RequestMapping("/fore.host")
	public String toForth() {
		//string <- 스프링이 해석함 
		return "hostForthpage.jsp";
	}
	
	@RequestMapping("/five.host")
	public String toFive() {
		//string <- 스프링이 해석함 
		return "hostFivehpage.jsp";
	}
	
}
