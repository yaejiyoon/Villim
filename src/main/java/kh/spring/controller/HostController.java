package kh.spring.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.interfaces.HomeService;

@Controller
public class HostController{

	@Autowired
	private HomeService homeService;

	@RequestMapping("/hostMain.do")
	public ModelAndView toHostMain() throws Exception {

		List<HomeDTO> homeList = homeService.getAllHomeData();
		HomeDTO hdto = homeService.getOldestHomeData();

		ModelAndView mav = new ModelAndView();
		mav.addObject("homeList", homeList);
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/hostMain");

		return mav;

	}

	@RequestMapping("/hostHomeTab.do")
	public ModelAndView toHostHomeTab(int seq) throws Exception {
		System.out.println("/hostHomeTab.do : " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		List<String> list = new ArrayList<String>();

		String[] amenities = hdto.getHome_amenities().split(",");
		String[] safety = hdto.getHome_safety().split(",");
		String[] guest_access = hdto.getHome_guest_access().split(",");

		for (int i = 0; i < amenities.length; i++) {
			list.add(amenities[i]);
		}
		for (int i = 0; i < safety.length; i++) {
			list.add(safety[i]);
		}
		for (int i = 0; i < guest_access.length; i++) {
			list.add(guest_access[i]);
		}

		for (String str : list) {
			System.out.println("split: " + str);
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto); 
		mav.addObject("list", list);
		mav.setViewName("/host/hostHomeTab");

		return mav;

	}

	@RequestMapping("/hostReserveTab.do")
	public ModelAndView toHostReserveTab(int seq) throws Exception {
		System.out.println("/hostReserveTab.do : " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		String[] rules = hdto.getHome_rules().split(",");
		String[] details = hdto.getHome_details().split(",");

		List<String> ruleList = new ArrayList<String>();
		List<String> detailsList = new ArrayList<String>();

		for(int i=0; i<rules.length; i++) {
			ruleList.add(rules[i]);
		}

		for(int i=0; i<details.length; i++) {
			detailsList.add(details[i]);
		}

		for (String str : ruleList) {
			System.out.println("split: " + str);
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("ruleList", ruleList);
		mav.addObject("detailsList", detailsList);
		mav.addObject("hdto", hdto); 
		mav.setViewName("/host/hostReserveTab");

		return mav;
	}

	@RequestMapping("/hostPriceTab.do")
	public ModelAndView toHostPriceTab(int seq) throws Exception {
		System.out.println("/hostPriceTab.do : " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);
		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto); 
		mav.setViewName("/host/hostPriceTab");

		return mav;
	}

	@RequestMapping("/hostReservePossibleTab.do")
	public ModelAndView tohostReservePossibleTab(int seq) throws Exception {
		System.out.println("/hostReservePossibleTab.do : " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto); 
		mav.setViewName("/host/hostReservePossibleTab");

		return mav;
	}

	@RequestMapping("/hostHomePhotoModifyTab.do")
	public ModelAndView tohostHomePictureModifyTab(int seq) throws Exception {
		System.out.println("/hostHomePhotoModifyTab.do : " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);
		List<HomePicDTO> hplist = homeService.getHomePicData(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.addObject("hplist", hplist);
		mav.setViewName("/host/hostHomePhotoModifyTab");

		return mav;
	}

	@RequestMapping("/uploadPhoto.do")
	public ModelAndView toUploadPhoto(int seq,HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("/uploadPhoto.do : " + seq);

		request.setCharacterEncoding("UTF-8");
		String realPath = request.getSession().getServletContext().getRealPath("/files/");
		System.out.println(realPath);

		File f = new File(realPath);
		if(!f.exists()) {
			f.mkdir();
		}
		
		System.out.println("1");
		
		int maxSize = 1024 * 1024 * 100;
		String enc = "UTF-8";

		int inputPhotoResult = 0 ;

		System.out.println("2");
		
		MultipartRequest mr = new MultipartRequest(request, realPath, maxSize, enc, new DefaultFileRenamePolicy());
		Enumeration<String> names = mr.getFileNames();

		System.out.println("3");
		
		if(names!=null) {
			System.out.println("4");
			String paramName = names.nextElement();
			String systemName = mr.getFilesystemName(paramName);
			
			System.out.println("5 : "+seq+" : " + systemName+" : ");
			
			inputPhotoResult = homeService.addHomePicData(
					new HomePicDTO(0,seq,systemName));
			
			System.out.println("inputPhotoResult : " + inputPhotoResult);
		}
		System.out.println("5");

		HomeDTO hdto = homeService.getHomeData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/hostHomePhotoModifyTab");

		return mav;
	}

}
