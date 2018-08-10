package kh.spring.controller;

import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.YearMonth;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberDTO dto;
	
	@Autowired
	MemberService service;
	
	// 년도 ajax
	@RequestMapping("year.do")
	@ResponseBody
	public void year(HttpServletRequest request, HttpServletResponse response) {
		try {
		
		//ajax 에서 return 이랑 togeson 같이 못씀 쓰면 이미 getwriter 있다는 에러발생
		//그리고 responsebody가 스프링에서는 꼭 써야한다
		System.out.println("년도");
		
		JSONArray arr= new JSONArray();
		for(int i=1950; i<2000; i++) {
			arr.add(i);	
		}
		for(int j=0; j<arr.size(); j++) {
			System.out.println(arr.get(j));
		}
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		new Gson().toJson(arr, response.getWriter());
		
		
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
	}
	// 윤년 계산하여 일수 출력 ajax
	@RequestMapping("day.do")
	@ResponseBody
	public void day(HttpServletRequest request, HttpServletResponse response) {
		try {
		
		//ajax 에서 return 이랑 togeson 같이 못씀 쓰면 이미 getwriter 있다는 에러발생
		//그리고 responsebody가 스프링에서는 꼭 써야한다
		System.out.println("몇일");
		String month = request.getParameter("month").split("월")[0];
		String year = request.getParameter("year").split("년")[0];
		
		System.out.println("월" + month + "년" + year);
		
		
		
		YearMonth yearMonthObject = YearMonth.of(Integer.parseInt(year), Integer.parseInt(month));
		int dayInMonth = yearMonthObject.lengthOfMonth();
		ModelAndView mav = new ModelAndView();
		JSONArray arr= new JSONArray();
		for(int i=1; i<=dayInMonth; i++) {
			arr.add(i);	
		}
		for(int j=0; j<arr.size(); j++) {
			System.out.println("일 수"+arr.get(j));
		}
		
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		new Gson().toJson(arr, response.getWriter());
		
		
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
	}
	// google 정보 출력해서 회원가입 페이지로 이동
	@RequestMapping("info.do")
	public ModelAndView info(HttpServletRequest request) {
		ModelAndView mav =  new ModelAndView();
		
		String secondName = request.getParameter("secondName");
		String firstName = request.getParameter("firstName");
		String accountEmail = request.getParameter("accountEmail");
		String year = request.getParameter("yearProp");
		String month = request.getParameter("monthProp");
		String day = request.getParameter("dayProp");
		String name = firstName + secondName;
		String birth = year + month + day;
		
		System.out.println("이름 : " + firstName + secondName);
		System.out.println("이메일 : " + accountEmail);
		System.out.println("생일 : " + year + month + day);
		
		dto.setMember_email(accountEmail);
		dto.setMember_birth(birth);
		dto.setMember_name(name);
		System.out.println(dto.getMember_email());
		
		mav.addObject("member_email", accountEmail);
		mav.addObject("birth", birth);
		mav.addObject("name", name);
		mav.setViewName("signup");
		
		return mav;
			
	}
	
	//사진 업로드 ajax
	@RequestMapping("upload.do")
	@ResponseBody
	public void upload(MultipartHttpServletRequest request,HttpServletResponse response) {
		
		
		String path = "C:\\Users\\jang6\\spring\\sworkspace_project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Villim\\files\\";
		System.out.println(request.getParameter("formData"));
		
		System.out.println(request.getParameter("Data"));
		System.out.println(request.getParameter("upload"));
		System.out.println(request.getFileNames());
	
	      File f = new File(path);
	      if (!f.exists()) {
	         f.mkdir();
	      }
	      
	      Iterator<String> files = request.getFileNames();
	      while(files.hasNext()) {
	    	  String uploadFile = files.next();
	    	  MultipartFile mFile = request.getFile(uploadFile);
	    	  System.out.println(mFile.getName());
	    	  System.out.println(mFile.getOriginalFilename());
	    	  String fileName = mFile.getOriginalFilename();
	    	  System.out.println("실제 파일 이름" + fileName);
	    	 try {
	    	    mFile.transferTo(new File(path + fileName));
	    	    String fullPath = path + fileName;
	    	  	response.setCharacterEncoding("utf8");
	  			response.setContentType("application/json");
	  			new Gson().toJson(fileName, response.getWriter());
	    	 }catch(Exception e) {
	    		 e.printStackTrace();
	    	 }
	    	 }


}
	// 폰 인증 번호 발송 
	@RequestMapping("phoneCheck.do")
	public void phoneCheck(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(request.getParameter("phoneNum"));
		String  pswd = "";

        StringBuffer sb1 = new StringBuffer();
        for( int i = 0; i<5; i++) {

            sb1.append((char)((Math.random() * 10)+48)); 
        }

        pswd = sb1.toString();

     String to = "82"+request.getParameter("phoneNum");
     String from="33644643087";
     String message = pswd;  
     String sendUrl = "https://www.proovl.com/api/send.php?user=6394162&token=mZJb0hlGqKxlgbpx4GqNTH4lX0aNAQ04";

     StringBuilder sb = new StringBuilder();
     sb.append(sendUrl);
     sb.append("&to="+to);
     sb.append("&from="+from);
     sb.append("&text="+message);

     System.out.println(sb.toString());

     try {
     URL url = new URL(sb.toString());
     HttpURLConnection con = (HttpURLConnection)url.openConnection();
     int result = con.getResponseCode();
     System.out.println(result);
     
//     request.getSession().setAttribute("authKey3", message);
     session.setAttribute("authKey", message);
     session.setMaxInactiveInterval(30);
     int time = session.getMaxInactiveInterval();
     
     
    
     System.out.println(session.getAttribute("authKey"));
    
    
     response.setCharacterEncoding("utf8");
	 response.setContentType("application/json");
	 new Gson().toJson(time, response.getWriter());
	 
     con.disconnect();

     }catch(Exception e) {
    	 e.printStackTrace();
     }
//     out.print(message);
    
	}
	
	// 전송된 인증키 확인 하여 회원가입 성공페이지 이동
	@RequestMapping("isAuthKey.do")
	public String isAuthKey(HttpServletRequest request, HttpServletResponse response,MemberDTO dto, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		String sessionKey = session.getAttribute("authKey").toString();
		String authNum = request.getParameter("authNum");
		if(sessionKey.equals(authNum)) {
		
		System.out.println("이메일" + dto.getMember_email());
		System.out.println("이름" + dto.getMember_name());
		System.out.println("생일" + dto.getMember_birth());
		System.out.println("프로필" + dto.getMember_picture());
		System.out.println("핸드폰" + dto.getMember_phone());
		

		int result = service.signup(dto);
		
		if(result > 0) {
			System.out.println("회원가입 성공");
			
//			mav.setViewName("successsignup");
			return "redirect:successsignup.do";
											
		}else {
			System.out.println("회원가입 실패");
			mav.setViewName("회원싶패 페이지");
			return "";
		}
		
		}
		else {
			System.out.println("인증번호 맞지 않는다");
			mav.setViewName("회원싶패 페이지");
			return "";
		}
		
		
	}
	// 이메일로 가입하는 페이지
	@RequestMapping("controllerEmail.do")
	public String signupEmail(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		
		return "emailsignup";
		
	}
	//성공 페이지로 이동(리다이렉트)
	@RequestMapping("successsignup.do")
	public String successsignup() {
		return "successsignup";
	}
	
	// 로그인 체크
	@RequestMapping("login.do")
	public ModelAndView login(MemberDTO dto, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		boolean result = service.isMember(dto);
		
		if(result) {
			System.out.println("로그인성공");
			session.setAttribute("login_email", dto.getMember_email());
			mav.setViewName("index");
			return mav;
		}else {
			System.out.println("로그인 실패");
			return mav;
		}

	}
}
