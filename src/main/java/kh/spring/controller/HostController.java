package kh.spring.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.interfaces.HomeService;

@Controller
public class HostController {

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

	@RequestMapping("/summary.do")
	public void toSummary(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("/summary.do:" + 1111);
		int seq = Integer.parseInt(request.getParameter("seq"));
		System.out.println(seq);

		JSONObject json = new JSONObject();

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		HomeDTO hdto = homeService.getHomeData(seq);

		if (hdto.getHome_addr1() == null) {
			hdto.setHome_addr1("");
		}
		if (hdto.getHome_addr2() == null) {
			hdto.setHome_addr2("");
		}
		if (hdto.getHome_addr3() == null) {
			hdto.setHome_addr3("");
		}
		if (hdto.getHome_addr4() == null) {
			hdto.setHome_addr4("");
		}

		json.put("seq", hdto.getHome_seq());
		json.put("name", hdto.getHome_name());
		json.put("pic", hdto.getHome_main_pic());
		json.put("addr1", hdto.getHome_addr1());
		json.put("addr2", hdto.getHome_addr2());
		json.put("addr3", hdto.getHome_addr3());
		json.put("addr4", hdto.getHome_addr4());
		json.put("state", hdto.getHome_state());
		json.put("price", hdto.getHome_price());

		response.getWriter().print(json);
		response.getWriter().flush();
		response.getWriter().close();

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

		for (int i = 0; i < rules.length; i++) {
			ruleList.add(rules[i]);
		}

		for (int i = 0; i < details.length; i++) {
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

		System.out.println("hplist: " + hplist.size());

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.addObject("hplist", hplist);
		mav.setViewName("/host/hostHomePhotoModifyTab");

		return mav;
	}

	@RequestMapping("/uploadPhoto.do")
	public void toUploadPhoto(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("/uploadPhoto.do : ");
		System.out.println(request.getParameter("seq"));

		int seq = 5;

		String realPath = request.getSession().getServletContext().getRealPath("/files/");
		System.out.println(realPath);

		File f = new File(realPath);
		if (!f.exists()) {
			f.mkdir();
		}

		File[] innerFile = f.listFiles();

		for (int i = 0; i < innerFile.length; i++) {
			String name = innerFile[i].getName();
			// System.out.println(innerFile[i].getName());
			System.out.println("name : " + name);
		}

		int maxSize = 1024 * 1024 * 100;
		String enc = "UTF-8";

		int addHomePicResult = 0;
		int addHomeResult = 0;

		MultipartRequest mr = new MultipartRequest(request, realPath, maxSize, enc, new DefaultFileRenamePolicy());
		Enumeration<String> names = mr.getFileNames();

		String filename = null;

		if (names != null) {
			String paramName = names.nextElement();
			String systemName = mr.getFilesystemName(paramName);
			filename = systemName;

			System.out.println("5 : " + seq + " : " + systemName + " : ");

			if (homeService.getHomeData(seq).getHome_main_pic() == null) {
				addHomeResult = homeService.addHomeRepresentData(systemName, seq);
			} else {
				addHomePicResult = homeService.addHomePicData(new HomePicDTO(0, seq, systemName));
			}

			System.out.println("addHomePicResult : " + addHomePicResult);
		}

		HomeDTO hdto = homeService.getHomeData(seq);
		List<HomePicDTO> hplist = homeService.getHomePicData(seq);

		System.out.println("hplist: " + hplist.size());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("hplist", hplist);
		map.put("hdto", hdto);
		map.put("filename", filename);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		new Gson().toJson(map, response.getWriter());

	}

	@RequestMapping("/deletePhoto.do")
	public void deletePhoto(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int separate = Integer.parseInt(request.getParameter("separate"));
		System.out.println("seperate:" + separate);

		JSONObject json = new JSONObject();

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		if (separate == 1) {
			System.out.println("deletePhoto1: " + request.getParameter("file") + " : " + request.getParameter("seq"));
			String file = request.getParameter("file");
			int seq = Integer.parseInt(request.getParameter("seq"));

			String realPath = request.getSession().getServletContext().getRealPath("/files/");

			File f = new File(realPath);
			f.mkdir();
			File[] innerFile = f.listFiles();

			String filename = file.split("/")[1];

			System.out.println("filename : " + filename);

			int delResult = homeService.deleteHomeMainPicData(filename, seq);

			for (int i = 0; i < innerFile.length; i++) {
				System.out.println(innerFile[i].getName().equals(filename));

				if (innerFile[i].getName().equals(filename)) {
					innerFile[i].delete();
				}
			}
			json.put("result", delResult);

			response.getWriter().print(json);
			response.getWriter().flush();
			response.getWriter().close();

		} else if (separate == 2) {
			System.out.println("deletePhoto2: " + request.getParameter("file"));
			String file = request.getParameter("file");

			String realPath = request.getSession().getServletContext().getRealPath("/files/");

			File f = new File(realPath);
			f.mkdir();
			File[] innerFile = f.listFiles();

			String filename = file.split("/")[1];

			System.out.println("filename : " + filename);

			for (int i = 0; i < innerFile.length; i++) {
				System.out.println(innerFile[i].getName().equals(filename));

				if (innerFile[i].getName().equals(filename)) {
					innerFile[i].delete();
				}
			}

			int delResult = homeService.deleteHomePicData(filename);
			System.out.println("디비삭제: " + delResult);

			json.put("result", delResult);

			response.getWriter().print(json);
			response.getWriter().flush();
			response.getWriter().close();

		} else if (separate == 3) {
			System.out.println("deletePhoto3: " + request.getParameter("file"));
			System.out.println("toMainPic :" + request.getParameter("toMainPic"));

			String file = request.getParameter("file");
			String toMainPic = request.getParameter("toMainPic");
			int seq = Integer.parseInt(request.getParameter("seq"));

			if (toMainPic == null) {
				System.out.println("null");
			} else {
				String homePic = toMainPic.split("/")[1];
				// String mainPic = file.split("/")[1];
				// System.out.println("mainPic :" + mainPic);

				int delResult = homeService.deleteHomePicData(homePic);
				int upMainPicResult = homeService.addHomeRepresentData(homePic, seq);
				System.out.println("디비삭제: " + delResult);
				json.put("result", delResult);
			}

			response.getWriter().print(json);
			response.getWriter().flush();
			response.getWriter().close();
		}

	}

	@RequestMapping("/hostHomeTitleModifyTab.do")
	public ModelAndView toHostHomeTitleModifyTab(int seq) throws Exception {
		System.out.println("hostHomeTitleModifyTab: " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);
		HomeDescDTO hddto = homeService.getHomeDescData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.addObject("hddto", hddto);
		mav.setViewName("/host/hostHomeTitleModifyTab");
		return mav;
	}

	@RequestMapping("/hostHomeTitleModifyProc.do")
	public ModelAndView toHostHomeTitleModifyProc(HomeDescDTO hddto, HomeDTO hdto) throws Exception {
		System.out.println("hostHomeTitleModifyProc: ");

		hddto.setHome_Seq(hdto.getHome_seq());

		int result1 = homeService.modifyHomeDescData(hddto);
		int result2 = homeService.modifyTitleHomeData(hdto);

		System.out.println("결과 : " + result1 + " : " + result2);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.addObject("result1", result1);
		mav.addObject("result2", result2);
		mav.setViewName("/host/hostHomeTitleModifyProc");
		return mav;
	}

	@RequestMapping("/hostHomeModifyFacilityTab.do")
	public ModelAndView toHomeModifyFacilityTab(int seq) throws Exception {
		System.out.println("homeModifyFacilityTab: " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/hostHomeModifyFacilityTab");
		return mav;
	}

	@RequestMapping("/hostHomeModifyFacilityProc.do")
	public ModelAndView toHostHomeModifyFacilityProc(int seq, HttpServletRequest request) throws Exception {
		System.out.println("homeModifyFacilityTab: " + seq);

		String[] fac = request.getParameterValues("fac");
		String[] safe = request.getParameterValues("secure");
		String[] guest = request.getParameterValues("acc");

		System.out.println("문자열 붙이기");
		System.out.println(fac.toString());

		String s_facility = Arrays.toString(fac);
		String s_safety = Arrays.toString(safe);
		String s_guest = Arrays.toString(guest);

		String facility = s_facility.substring(1, s_facility.length() - 1);
		String safety = s_safety.substring(1, s_safety.length() - 1);
		String guest_acc = s_guest.substring(1, s_guest.length() - 1);

		System.out.println("facfac:" + facility);

		HomeDTO hdto = new HomeDTO();
		hdto.setHome_seq(seq);
		hdto.setHome_amenities(facility);
		hdto.setHome_safety(safety);
		hdto.setHome_guest_access(guest_acc);

		int result = homeService.modifyHomeFacSecAccData(hdto);

		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("result", result);
		mav.setViewName("/host/hostHomeModifyFacilityProc");
		return mav;
	}

	@RequestMapping("/hostHomeModifyLocationTab.do")
	public ModelAndView toHostHomeModifyLocationTab(int seq, HttpServletRequest request, HttpServletRequest response)
			throws Exception {
		System.out.println("homeModifyLocationTab: " + seq);
		HomeDTO hdto = homeService.getHomeData(seq);

		System.out.println(hdto.getHome_checkin_end());
		System.out.println(hdto.getHome_name());
		System.out.println(hdto.getHome_lat());
		System.out.println(hdto.getHome_lng());

		double lat = Double.parseDouble(hdto.getHome_lat());
		double lng = Double.parseDouble(hdto.getHome_lng());

		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("lat", lat);
		mav.addObject("lng", lng);
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/hostHomeModifyLocationTab");
		return mav;
	}

	@RequestMapping("/hostHomeModifyLocationProc.do")
	public ModelAndView toHosthomeModifyLocationProc(HomeDTO dto, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("hosthomeModifyLocationProc: " + dto.getHome_seq());
		System.out.println(dto.getHome_lat());
		System.out.println(dto.getHome_lng());

		int result = homeService.modifyHomeLocData(dto);

		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.addObject("seq", dto.getHome_seq());
		mav.setViewName("/host/hostHomeModifyLocationProc");
		return mav;
	}

	@RequestMapping("/hostHomeModifyStateTab.do")
	public ModelAndView toHostHomeModifyStateTab(int seq) throws Exception {
		System.out.println("hostHomeModifyStateTab: " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/hostHomeModifyStateTab");

		return mav;
	}

	@RequestMapping("/hostHomeModifyStateProc.do")
	public ModelAndView toHostHomeModifyStateProc(int seq, HomeDTO hdto, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("hostHomeModifyStateTab: " + seq);

		String start = hdto.getHome_rest_start();
		String end = hdto.getHome_rest_end();

		System.out.println(hdto.getHome_state() + "," + start + "," + end);

		if (start.contains(",") || end.contains(",")) {
			System.out.println(",가 있다.");
			start.replaceAll(",", "");
			end.replaceAll(",", "");
		}

		hdto.setHome_rest_start(start);
		hdto.setHome_rest_end(end);
		hdto.setHome_seq(seq);
		int result = homeService.modifyHomeStateData(hdto);
		System.out.println("result:" + result);

		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.addObject("seq", seq);
		mav.setViewName("/host/hostHomeModifyStateProc");

		return mav;
	}

	@RequestMapping("/hostReserveModifyCheckin.do")
	public ModelAndView toHostReserveModifyCheckin(int seq) throws Exception {
		System.out.println("hostReserveModifyCheckin: " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/hostReserveModifyCheckin");

		return mav;
	}

	@RequestMapping("/hostReserveModifyCheckinProc.do")
	public ModelAndView toHostReserveModifyCheckinProc(int seq, HomeDTO hdto) throws Exception {
		System.out.println("hostReserveModifyCheckinProc: " + seq);
		System.out.println(
				hdto.getHome_checkin_start() + ":" + hdto.getHome_checkin_end() + ":" + hdto.getHome_checkout());

		hdto.setHome_seq(seq);

		int result = homeService.modifyReserveCheckinData(hdto);

		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("result", result);
		mav.setViewName("/host/hostReserveModifyCheckinProc");

		return mav;
	}

	@RequestMapping("/hostReserveModifyNight.do")
	public ModelAndView toHostReserveModifyNight(int seq) throws Exception {
		System.out.println("hostReserveModifyNight: " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/hostReserveModifyNight");

		return mav;
	}

	@RequestMapping("/hostReserveModifyNightProc.do")
	public ModelAndView toHostReserveModifyNightProc(int seq, HomeDTO hdto) throws Exception {
		System.out.println("hostReserveModifyNightProc: " + seq);

		hdto.setHome_seq(seq);

		int result = homeService.modifyReserveNightData(hdto);

		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("result", result);
		mav.setViewName("/host/hostReserveModifyNightProc");

		return mav;
	}

	@RequestMapping("/fullCalendar.do")
	public ModelAndView toFullCalendar(int seq) throws Exception {
		System.out.println("fullCalendar.do: " + seq);

		HomeDTO hdto = homeService.getHomeData(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hdto", hdto);
		mav.setViewName("/host/fullCalendar");

		return mav;
	}

	@RequestMapping("/modifyCalendar.do")
	public ModelAndView toModifyCalendar(int seq, HomeDTO hdto,HttpServletRequest request, HttpServletResponse response ) throws Exception {
		System.out.println("modifyCalendar.do: " + seq);

		String start = request.getParameter("start");
		String end = request.getParameter("end");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("start", start);
		map.put("end", end);
		
		List<String> list = homeService.getCalendarDate(map);
		for(String s : list) {
			System.out.println("list:" + s);
		}
		
		System.out.println(start + " : " + end);
		System.out.println(hdto.getHome_reserve_possible());
		System.out.println(hdto.getHome_price());
		
		hdto.setHome_seq(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/host/modifyCalendar");
		
		mav.addObject("seq", seq);
		return mav;
	}

	@RequestMapping("/calendarAjax.do")
	public void toCalendarAjax(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("calenderAjax: ");
		JSONObject json = new JSONObject();

		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");

		System.out.println(start + " : " + end);

		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");

		json.put("title", title);
		json.put("start", start);
		json.put("end", end);

		response.getWriter().print(json);
		response.getWriter().flush();
		response.getWriter().close();
	}

}
