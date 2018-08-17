package kh.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {

	
	@RequestMapping("/manager.do")
	public String managerMain(HttpServletRequest request) {
		
		return "manager/manager";
		
	}
}
