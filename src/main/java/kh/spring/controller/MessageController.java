package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.interfaces.MessageService;

@Controller
public class MessageController {

	@Autowired
	MessageService service;
	
	@RequestMapping("/messageMain.msg")
	public String main() {
		System.out.println("messageMain");
		return "/message/messageMain";
	}
	
}
