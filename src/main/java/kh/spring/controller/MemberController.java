package kh.spring.controller;

import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ProfileHomePicDTO;
import kh.spring.interfaces.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;

	@RequestMapping("/printProfile.mo")
	public ModelAndView printProfile(HttpSession session) {
		session.setAttribute("userId", "plmn855000@gmail.com");
		String userId = (String) session.getAttribute("userId");

		System.out.println("printProfile 들어온 사람 : " + userId);

		MemberDTO result = this.service.printProfile(userId);
		int houseCount = this.service.countHouse(userId);
		List<ProfileHomePicDTO> houseResult = this.service.getHouse(userId);
		System.out.println("여기도 들어오니?" + houseResult);

		for (ProfileHomePicDTO tmp : houseResult) {

			System.out.println(" > " + tmp.getHome_seq());
			System.out.println(" > " + tmp.getHome_name());
			System.out.println(" > "+tmp.getHome_pic_name());
	
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
		session.setAttribute("userId", "plmn855000@gmail.com");
		String userId = (String) session.getAttribute("userId");
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
		System.out.println("/editPhoto.mo ");
		String userId = (String) session.getAttribute("userId");
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
	   public String review() {
	      System.out.println("profileReview.mo");
	      return "/profile/profileReview";
	   }
	   
	   @RequestMapping("/reviewWrite.mo")
	   public String reviewView() {
	      System.out.println("reviewWrite.mo");
	      return "/profile/reviewWrite";
	   }
	
	
	
	
	
	
}
