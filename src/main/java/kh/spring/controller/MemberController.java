package kh.spring.controller;

import java.time.YearMonth;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

@Controller
public class MemberController {
	
	@RequestMapping("year.do")
	public void year(HttpServletResponse response) {
		try {
			System.out.println("서버");
		YearMonth yearMonthObject = YearMonth.of(1999, 2);
		int dayInMonth = yearMonthObject.lengthOfMonth();
		JSONArray arr= new JSONArray();
		for(int i=1900; i<2020; i++) {
			arr.add(i);
			System.out.println(arr.get(i));
		}
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		new Gson().toJson(arr, response.getWriter());
		
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
