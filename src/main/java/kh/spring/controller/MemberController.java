package kh.spring.controller;

import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MailSendDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.dto.ReviewDTO;
import kh.spring.dto.Review_H_DTO;
import kh.spring.interfaces.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	
//	@Autowired
//	MemberDTO dto;

//	@Autowired
//	MailSendDTO mailDto;

	@Autowired
	MemberService service;

	// 년도 ajax
	@RequestMapping("year.do")
	@ResponseBody
	public void year(HttpServletRequest request, HttpServletResponse response) {
		try {

			// ajax 에서 return 이랑 togeson 같이 못씀 쓰면 이미 getwriter 있다는 에러발생
			// 그리고 responsebody가 스프링에서는 꼭 써야한다
			System.out.println("년도");

			JSONArray arr = new JSONArray();
			for (int i = 1950; i < 2000; i++) {
				arr.add(i);
			}
			for (int j = 0; j < arr.size(); j++) {
				System.out.println(arr.get(j));
			}

			response.setCharacterEncoding("utf8");
			response.setContentType("application/json");
			new Gson().toJson(arr, response.getWriter());

		} catch (Exception e) {
			e.printStackTrace();

		}

	}

	// 윤년 계산하여 일수 출력 ajax
	@RequestMapping("day.do")
	@ResponseBody
	public void day(HttpServletRequest request, HttpServletResponse response) {
		try {

			// ajax 에서 return 이랑 togeson 같이 못씀 쓰면 이미 getwriter 있다는 에러발생
			// 그리고 responsebody가 스프링에서는 꼭 써야한다
			System.out.println("몇일");
			String month = request.getParameter("month").split("월")[0];
			String year = request.getParameter("year").split("년")[0];

			System.out.println("월" + month + "년" + year);

			YearMonth yearMonthObject = YearMonth.of(Integer.parseInt(year), Integer.parseInt(month));
			int dayInMonth = yearMonthObject.lengthOfMonth();
			ModelAndView mav = new ModelAndView();
			JSONArray arr = new JSONArray();
			for (int i = 1; i <= dayInMonth; i++) {
				arr.add(i);
			}
			for (int j = 0; j < arr.size(); j++) {
				System.out.println("일 수" + arr.get(j));
			}

			response.setCharacterEncoding("utf8");
			response.setContentType("application/json");
			new Gson().toJson(arr, response.getWriter());

		} catch (Exception e) {
			e.printStackTrace();

		}

	}

	// google 정보 출력해서 회원가입 페이지로 이동
	@RequestMapping("info.do")
	public ModelAndView info(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = new MemberDTO(); // 새로 추가됨
		
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

	// 사진 업로드 ajax
	@RequestMapping("upload.do")
	@ResponseBody
	public void upload(HttpServletRequest request,HttpServletResponse response) {
		
		
//		String path = "C:\\Users\\jang6\\spring\\sworkspace_project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Villim\\files\\";
//		System.out.println(request.getParameter("formData"));
//		
//		System.out.println(request.getParameter("Data"));
//		System.out.println(request.getParameter("upload"));
//		System.out.println(request.getFileNames());
//		
//	      File f = new File(path);
//	      if (!f.exists()) {
//	         f.mkdir();
//	      }
//	      
//	      Iterator<String> files = request.getFileNames();
//	      while(files.hasNext()) {
//	    	  String uploadFile = files.next();
//	    	  MultipartFile mFile = request.getFile(uploadFile);
//	    	  System.out.println(mFile.getName());
//	    	  System.out.println(mFile.getOriginalFilename());
//	    	  String fileName = mFile.getOriginalFilename();
//	    	  System.out.println("실제 파일 이름" + fileName);
//	    	 try {
//	    	    mFile.transferTo(new File(path + fileName));
//	    	    String fullPath = path + fileName;
//	    	  	response.setCharacterEncoding("utf8");
//	  			response.setContentType("application/json");
//	  			new Gson().toJson(fileName, response.getWriter());
//	    	 }catch(Exception e) {
//	    		 e.printStackTrace();
//	    	 }
//	    	 }

	      String realPath = request.getSession().getServletContext().getRealPath("/files/");
	      System.out.println(realPath);

	      File f = new File(realPath);
	      if (!f.exists()) {
	         f.mkdir();
	      }

	      int maxSize = 1024 * 1024 * 100;
	      String enc = "UTF-8";

	      int addHomePicResult = 0;
	      int addHomeResult = 0;
	      try {
	      MultipartRequest mr = new MultipartRequest(request, realPath, maxSize, enc, new DefaultFileRenamePolicy());
	      Enumeration<String> names = mr.getFileNames();

	      String filename = null;

	      if (names != null) {
	         String paramName = names.nextElement();
	         String systemName = mr.getFilesystemName(paramName);
	         filename = systemName;

	         System.out.println("5 : " + systemName + " : ");
	      }
	      
	      response.setContentType("application/json");
	      response.setCharacterEncoding("UTF-8");
	      
	      new Gson().toJson(filename, response.getWriter());
	      }catch(Exception e){
	    	  e.printStackTrace();
	      }

}
	// 폰 인증 번호 발송 
	@RequestMapping("phoneCheck.do")
	public void phoneCheck(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(request.getParameter("phoneNum"));
		String pswd = "";

		StringBuffer sb1 = new StringBuffer();
		for (int i = 0; i < 5; i++) {

			sb1.append((char) ((Math.random() * 10) + 48));
		}

		pswd = sb1.toString();

		String to = "82" + request.getParameter("phoneNum");
		String from = "33644643087";
		String message = pswd;
		String sendUrl = "https://www.proovl.com/api/send.php?user=6394162&token=mZJb0hlGqKxlgbpx4GqNTH4lX0aNAQ04";

		StringBuilder sb = new StringBuilder();
		sb.append(sendUrl);
		sb.append("&to=" + to);
		sb.append("&from=" + from);
		sb.append("&text=" + message);

		System.out.println(sb.toString());

		try {
			URL url = new URL(sb.toString());
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			int result = con.getResponseCode();
			System.out.println(result);

			// request.getSession().setAttribute("authKey3", message);
			session.setAttribute("authKey", message);
			session.setMaxInactiveInterval(30);
			int time = session.getMaxInactiveInterval();

			System.out.println(session.getAttribute("authKey"));

			response.setCharacterEncoding("utf8");
			response.setContentType("application/json");
			new Gson().toJson(time, response.getWriter());

			con.disconnect();

		} catch (Exception e) {
			e.printStackTrace();
		}
		// out.print(message);

	}

	// 전송된 인증키 확인 하여 회원가입 성공페이지 이동
	@RequestMapping("isAuthKey.do")
	@ResponseBody
	public void isAuthKey(HttpServletRequest request, HttpServletResponse response,MemberDTO dto, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		String sessionKey = session.getAttribute("authKey").toString();
		String authNum = request.getParameter("authNum");
		String memberEmail = request.getParameter("member_email");
		String memberPw = request.getParameter("member_pw");
		String memberPicture = request.getParameter("member_picture");
		String memberBirth = request.getParameter("member_birth");
		String memberPhone = request.getParameter("member_phone");
		String memberName = request.getParameter("member_name");
		
		dto.setMember_email(memberEmail);
		dto.setMember_picture(memberPicture);
		dto.setMember_phone(memberPhone);
		dto.setMember_pw(memberPw);
		dto.setMember_name(memberName);
		dto.setMember_birth(memberBirth);
		
		
		if(sessionKey.equals(authNum)) {
		
		System.out.println("이메일" + memberEmail);
		System.out.println("이름" + memberName);
		System.out.println("생일" + memberBirth);
		System.out.println("프로필" + memberPicture);
		System.out.println("핸드폰" + memberPhone);
		

		int result = service.signup(dto);
		
		if(result > 0) {
			System.out.println("회원가입 성공");
			String msg = "성공";
			
			response.setCharacterEncoding("utf8");
			response.setContentType("application/json");
			try {
			new Gson().toJson(msg, response.getWriter());
			}catch(Exception e) {
				e.printStackTrace();
			}
//			mav.setViewName("successsignup");
//			return "redirect:successsignup.do";
			
											
		}else {
			System.out.println("회원가입 실패");
			mav.setViewName("회원싶패 페이지");
			
		}
		
		}
		else {
			System.out.println("인증번호 맞지 않는다");
			mav.setViewName("회원싶패 페이지");

		}

	}
	//회원가입 성공시 
	@RequestMapping("successsignup.do")
	public String successSignup() {	
		
		return "redirect:successsignup1.do";
	}
	//성공 페이지로 이동(리다이렉트)
	@RequestMapping("successsignup1.do")
	public String successsignup() {
		return "successsignup";
	}
	
	
	// 이메일로 가입하는 페이지
	@RequestMapping("controllerEmail.do")
	public String signupEmail(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		return "emailsignup";

	}
	// 카카오로 가입하는 페이지
	@RequestMapping("kakaoInfo.do")
	public ModelAndView kakaoInfo(HttpServletRequest request, MemberDTO dto,HttpSession session) {
		System.out.println("kakaoInfo 접속");
		ModelAndView mav = new ModelAndView();
		String picture = service.isSnsMember(dto);
		
		if(!(picture.equals(""))) {
			System.out.println("이미 가입 되어있는 아이디 입니다.");
			System.out.println(dto.getMember_email());
			session.setAttribute("login_email", dto.getMember_email());
			session.setAttribute("login_picture", dto.getMember_picture());
			
			mav.setViewName("alreadysignup");
			return mav; 
		}else {
			mav.setViewName("kakaosignup");
			return mav;
		}
		
		
	}

	// 페이스북로 가입하는 페이지
	@RequestMapping("fbInfo.do")
	public ModelAndView fbInfo(HttpServletRequest request, MemberDTO dto,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println("facebookInfo 접속");
		String picture = service.isSnsMember(dto);
		System.out.println(dto.getMember_email());
		
		if(!(picture.equals(""))) {
			System.out.println("이미 가입 되어있는 아이디 입니다.");
			System.out.println(dto.getMember_email());
			session.setAttribute("login_email", dto.getMember_email());
			session.setAttribute("login_picture", dto.getMember_picture());
			
			mav.setViewName("alreadysignup");
			return mav; 
		}else {
			mav.setViewName("facebooksignup");
			return mav;
		}
		
		
		
	}
	// 페이스북로 가입하는 페이지2
	@RequestMapping("fbInfo2.do")
	public ModelAndView fbInfo2(HttpServletRequest request, MemberDTO dto,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println("facebookInfo2 접속");
		dto.setMember_email(session.getAttribute("login_email").toString());
		
		String picture = service.isSnsMember(dto);

		
//		if(!(picture.equals(""))) {
//			System.out.println("이미 가입 되어있는 아이디 입니다.");
			System.out.println(dto.getMember_email());
			session.setAttribute("login_email", dto.getMember_email());
			session.setAttribute("login_picture", dto.getMember_picture());
			
			mav.setViewName("index");
			return mav; 
//		}else {
//			mav.setViewName("facebooksignup");
//			return mav;
//		}
//		
		
		
	}
	

	
	// 로그인 체크
	@RequestMapping("login.do")
	public ModelAndView login(MemberDTO dto, HttpSession session, HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		
		String picture = service.isMember(dto);
		
		if(!(picture.equals(""))) {
			System.out.println("로그인성공");
			session.setAttribute("login_email", dto.getMember_email());
			session.setAttribute("login_picture", dto.getMember_picture());
			
			mav.setViewName("index");
			return mav;
		} else {
			System.out.println("로그인 실패");
			return mav;
		}

	}
	
	@RequestMapping("snslogin.do")
	public ModelAndView snslogin(MemberDTO dto, HttpSession session) {
		
		System.out.println("sns 로그인 부분입니다.");
		ModelAndView mav = new ModelAndView();
		String picture = service.isSnsMember(dto);
		if(!(picture.equals(""))) {
			System.out.println("로그인성공");
			
			session.setAttribute("login_email", dto.getMember_email());
			session.setAttribute("login_picture", dto.getMember_picture());
			mav.setViewName("index");
			return mav;
		}else {
			System.out.println("로그인 실패");
			return mav;
		}

	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "redirect:/";
		
	}
	@RequestMapping("find.do")
	public void find(HttpServletRequest request, HttpServletResponse response) {
	   try {
		MailSendDTO mailDto = new MailSendDTO(mailSender);
		String mail = request.getParameter("mail");
		String name = service.isMail(mail);
		System.out.println(mail);
		System.out.println(name);
		String url = "<img src='<c:url value='/resources/img/logo2.png'/>'"
				+ "<br>" + name + "<h4>님, 안녕하세요.</h4><br>"
				+ "<h4>비밀번호 재설정을 요청하셨습니다.</h4><br>"
				+ "<h4>회원님이 요청하지 않은 경우 아무런 조치를 취하실 필요가 없습니다.</h4><br>"
				+ "<h4>요청하셨다면 다음 링크를 이용해 비밀번호를 재설정하세요.</h4><br>"
				+ "<a class='btn btn-danger'>비밀번호 재설정 하기</a>"
				+ "<h4>감사합니다. </h4><br>"
				+ "<h4>Villim 팀 드림 </h4><br>";
		
		String url1 ="<a style='display:inline-block; text-align:center; vertical-align:middle; text-decoration:none; font-size:12px; color:#fff;background-color:#d9534f;border-color:#d43f3a width:118px; height:38px; line-height:38px;'" + "href='#'>비밀번호 재설정 하기</a>"
		+"<h4>감사합니다. </h4>"+"<h4>Villim 팀 드림 </h4><br>";
		
		
		
		
		mailDto.setText(new StringBuffer().append(url1).toString());
		/*mailDto.addInline(contentId, dataSource);*/
		mailDto.setFrom("villim", "Villim");
		mailDto.setTo(mail);
		mailDto.setSubject("Villim 입니다.");
		mailDto.send();
		System.out.println("메일보내기 성공");
		String msg = "성공";
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		
		new Gson().toJson(msg, response.getWriter());
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//---- 지은 파트 시작
	@RequestMapping("/printProfile.mo")
	public ModelAndView printProfile(HttpSession session) {
		session.setAttribute("userId", "jake@gmail.com");
		String userId = (String) session.getAttribute("userId");

		System.out.println("printProfile 들어온 사람 : " + userId);

		MemberDTO result = this.service.printProfile(userId);
		int houseCount = this.service.countHouse(userId);
		List<HomeDTO> houseResult = this.service.getHouse(userId);
		System.out.println("여기도 들어오니?" + houseResult);

		for (HomeDTO tmp : houseResult) {

			System.out.println(" > " + tmp.getHome_seq());
			System.out.println(" > " + tmp.getHome_name());
			System.out.println(" > " + tmp.getHome_main_pic());

		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.addObject("count", houseCount);
		mav.addObject("houseResult", houseResult);

		mav.setViewName("/profile/profileShow");
		return mav;
	}

	@RequestMapping("/profileEditView.mo")
	public ModelAndView profileEditView(HttpSession session) {

		String userId = (String) session.getAttribute("login_email");
		System.out.println("들어온 사람 : " + userId);
		MemberDTO result = this.service.printProfile(userId);
		MemberDTO getPhoto = this.service.getPhoto(userId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		String success = (String) session.getAttribute("updateSuccess");

		if (success != null) {
			mav.addObject("inputSuccess", "success");
			mav.addObject("result", result);
			mav.addObject("photo", getPhoto.getMember_picture());
			mav.setViewName("/profile/profileEdit");
			session.removeAttribute("updateSuccess");
			System.out.println("null일때 :" + success + "수정 성공후 수정페이지 입문");

		} else {
			mav.addObject("result", result);
			mav.addObject("photo", getPhoto.getMember_picture());
			System.out.println("null이 아닐때 : 여기로 잘들어옴 그냥 수정페이지 입문");
			mav.setViewName("/profile/profileEdit");
		}

		System.out.println(result.getMember_name());
		return mav;
	}

	@RequestMapping("/editProfile.mo")
	public String profileEdit(MemberDTO dto, String year, String month, String day, HttpSession session) {
		dto.setMember_birth(year + "년" + month + "월" + day + "일");
		String result = this.service.editProfile(dto);
		if (result != null) {
			session.setAttribute("updateSuccess", "성공");
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName("/profileEditView.mo");

		return "redirect:profileEditView.mo";

	}

	@RequestMapping("/editPhoto.mo")
	public void editPhoto(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		System.out.println("/editPhoto.mo");
		String userId = (String) session.getAttribute("login_email");
		String realPath = request.getSession().getServletContext().getRealPath("/files/");
		System.out.println(realPath);

		File f = new File(realPath);
		if (!f.exists()) {
			f.mkdir();
		}

		int maxSize = 1024 * 1024 * 100;
		String enc = "UTF-8";

		MultipartRequest mr = new MultipartRequest(request, realPath, maxSize, enc, new DefaultFileRenamePolicy());
		Enumeration<String> names = mr.getFileNames();

		int editPhotoResult = 0;
		String filename = null;
		if (names != null) {
			String paramName = names.nextElement();
			String systemName = mr.getFilesystemName(paramName);
			filename = systemName;

			System.out.println("systemName :  " + systemName);

			editPhotoResult = this.service.editPhoto(systemName, userId);
			System.out.println(" editPhotoResult  : " + editPhotoResult);

			// 사진 다시 가져오기

			MemberDTO getPhoto = this.service.getPhoto(userId);
			getPhoto.getMember_picture();

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("getPhoto", getPhoto.getMember_picture());
			map.put("filename", filename);

			new Gson().toJson(map, response.getWriter());
		}
	}

	@RequestMapping("/profileReview.mo")
	public ModelAndView review(HttpSession session) {
		System.out.println("profileReview.mo");
		ModelAndView mav = new ModelAndView();
		int home_seq = 0;
		int reviewHome_seq = 0;

		List<Integer> hostHome_seq = new ArrayList<Integer>();

		List<Integer> g_review_seq = new ArrayList<Integer>();
		String userId = (String) session.getAttribute("login_email");
		System.out.println("아이디:" + userId);

		// 나에 대한 지난 후기
		List<Integer> getSeq = this.service.getSeq(userId);

		if (!getSeq.isEmpty()) {
			for (int i = 0; i < getSeq.size(); i++) {
				hostHome_seq.add(i);
				System.out.println(i + "번째 : " + getSeq.get(i));
			}
		} else {
			System.out.println("getSeq없음");
			hostHome_seq.add(0);

		}

		List<Review_H_DTO> getHostReview = this.service.getHostReview(hostHome_seq);

		if (!getHostReview.isEmpty()) {
			for (Review_H_DTO tmp : getHostReview) {
				System.out.println("guestSeq: " + tmp.getG_review_seq() + " home_seq" + tmp.getHome_seq() + "사진 : "
						+ tmp.getMember_picture() + "/ 이름 : " + tmp.getMember_name() + " /리뷰 :"
						+ tmp.getG_review_public() + " /날짜 : " + tmp.getG_review_date());
				g_review_seq.add(tmp.getG_review_seq());
			}

			mav.addObject("getHostReview", getHostReview);
			List<HostReviewDTO> getrealHostReview = this.service.getRealHostReview(g_review_seq);

			if (!getrealHostReview.isEmpty()) {
				mav.addObject("getrealHostReview", getrealHostReview);
				MemberDTO result = this.service.printProfile(userId);
				mav.addObject("hostPicture", result.getMember_picture());
				mav.addObject("hostName", result.getMember_name());

			} else {
				System.out.println("호스트 답변리뷰 없음 사이즈 > " + getrealHostReview.size());
				MemberDTO result = this.service.printProfile(userId);
				mav.addObject("hostPicture", result.getMember_picture());
				mav.addObject("hostName", result.getMember_name());
				/* mav.addObject("hostComment","no"); */
			}

		} else {
			System.out.println("getHostReview 없음" + getHostReview);
			g_review_seq.add(0);

		}

		// 나에 대한 지난 후기 답글

		// 작성 할 후기
		List<ReservationDTO> result = this.service.getInfo(userId);
		// 작성 한 후기
		List<ReviewDTO> guestReviewresult = this.service.getGuestReview(userId);
		if (!result.isEmpty()) {
			for (ReservationDTO tmp : result) {
				System.out.println("써야할 후기 > home_seq : " + tmp.getHome_seq() + "집 이름: " + tmp.getHome_name()
						+ " 체크인 : " + tmp.getReserv_checkin() + "체크아웃 : " + tmp.getReserv_checkout());
				home_seq = tmp.getHome_seq();
				break;
			}

			HomeDTO getHomePhoto = this.service.getHomePhoto(home_seq);
			mav.addObject("result", result);
			mav.addObject("homePhotoResult", getHomePhoto.getHome_main_pic());
		} else {
			System.out.println("result zz: " + result + "guestReviewresult :" + guestReviewresult);
		}

		if (!guestReviewresult.isEmpty()) {
			for (ReviewDTO tmp : guestReviewresult) {
				System.out.println("리뷰 쓴home_seq : " + tmp.getHome_seq() + "집 이름: " + tmp.getHome_name() + " 날짜"
						+ tmp.getG_review_date() + "내용 :" + tmp.getG_review_public());
				reviewHome_seq = tmp.getHome_seq();
				break;
			}
			HomeDTO getReviewHomePhoto = this.service.getHomePhoto(reviewHome_seq);
			System.out.println("review home_포토 이름 : " + getReviewHomePhoto.getHome_main_pic());
			mav.addObject("guestReviewresult", guestReviewresult);
			mav.addObject("reviewHomePhoto",  getReviewHomePhoto.getHome_main_pic());
		} else {
			System.out.println("작성할 후기 result 없음: " + result.size() + "guestReviewresult :" + guestReviewresult.size());

		}

		mav.setViewName("/profile/profileReview");

		return mav;

	}

	@RequestMapping("/reviewWrite.mo")
	public ModelAndView reviewView(int home_seq, String checkin, String checkout, String home_main_pic,
			String home_name) {
		System.out.println("reviewWrite.mo");
		System.out.println(home_seq + " / " + checkin + " / " + checkout + " / " + home_main_pic + " / " + home_name);

		HomeDTO member_emailResult = this.service.getMemberEmail(home_seq);
		
		MemberDTO memberInfoResult = this.service.printProfile(member_emailResult.getMember_email());
		memberInfoResult.getMember_name();
		memberInfoResult.getMember_picture();
		ModelAndView mav = new ModelAndView();
		String year1 = checkin.split("-")[0];
		String month1 = checkin.split("-")[1];
		String day1 = checkin.split("-")[2];
		String year2 = checkout.split("-")[0];
		String month2 = checkout.split("-")[1];
		String day2 = checkout.split("-")[2];

		checkin = year1 + "년 " + month1 + "월 " + day1 + "일 ";
		checkout = year2 + "년 " + month2 + "월 " + day2 + "일 ";
		mav.addObject("home_seq", home_seq);
		mav.addObject("checkin", checkin);
		mav.addObject("checkout", checkout);
		mav.addObject("home_main_pic", home_main_pic);
		mav.addObject("home_name", home_name);
		mav.addObject("member_name", memberInfoResult.getMember_name());
		mav.addObject("member_picture", memberInfoResult.getMember_picture());
		mav.setViewName("/profile/reviewWrite");
		return mav;

	}

	@RequestMapping("/guestReview.mo")
	public String guestReviewInput(HttpSession session, GuestReviewDTO dto) {
		System.out.println("guestReview.mo");

		String userId = (String) session.getAttribute("login_email");
		dto.setMember_email(userId);
		System.out.println("seq : " + dto.getHome_seq() + "만족도 : " + dto.getG_review_satisfaction() + "accuracy : "
				+ dto.getG_review_accuracy() + "청결도 : " + dto.getG_review_cleanliness() + " 체크인 : "
				+ dto.getG_review_checkIn() + "편의시설 :" + dto.getG_review_amenities() + " 커뮤 : "
				+ dto.getG_review_communication() + " 위치 : " + dto.getG_review_location() + " 가치 :"
				+ dto.getG_review_value() + " 공개후기 : " + dto.getG_review_public() + " 비공개후기 : "
				+ dto.getG_review_private());
		// 리뷰 넣기
		int home_seq = dto.getHome_seq();
		String member_email = dto.getMember_email();
		int insertGuestReviewResult = this.service.insertGuestReview(dto);
		int updateReservation = this.service.updateReservation(home_seq, member_email);
		System.out.println(insertGuestReviewResult);
		System.out.println(updateReservation);

		return "redirect:profileReview.mo";

	}

	@RequestMapping("/hostReview.mo")
	public String hostReviewInput(HttpSession session, HostReviewDTO dto) {
		System.out.println("hostReview.mo");
		String userId = (String) session.getAttribute("login_email");

		// 리뷰 넣기

		System.out.println("seq : " + dto.getG_review_seq() + "home_seq : " + dto.getHome_seq() + " public: "
				+ dto.getH_review_public());
		int insertHostReviewResult = this.service.insertHostReview(dto);
		if (insertHostReviewResult > 0) {
			System.out.println(" 결과있음!");
		} else {
			System.out.println("결과없음!");
		}

		return "redirect:profileReview.mo";

	}

}
