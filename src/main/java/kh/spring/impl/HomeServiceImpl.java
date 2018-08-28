package kh.spring.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.HomeDAO;
import kh.spring.interfaces.HomeService;

@Component
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeDAO hdao;
	
	@Override
	public List<HomeDTO> getAllHomeData(String member_email) {
		return hdao.getAllHomeData(member_email);
	}

	@Override
	public HomeDTO getOldestHomeData() {
		return hdao.getOldestHomeData();
	}

	@Override
	public HomeDTO getHomeData(int home_seq) {
		return hdao.getHomeData(home_seq);
	}

	@Override
	public int addHomePicData(HomePicDTO dto) {
		return hdao.addHomePicData(dto);
	}

	@Override
	public List<HomePicDTO> getHomePicData(int seq) {
		return hdao.getHomePicData(seq);
	}

	@Override
	public int addHomeRepresentData(String fileName, int seq) {
		return hdao.addHomeRepresentData(fileName, seq);
	}

	@Override
	public int deleteHomePicData(String fileName) {
		return hdao.deleteHomePicData(fileName);
	}

	@Override
	public int deleteHomeMainPicData(String filename, int seq) {
		return hdao.deleteHomeMainPicData(filename, seq);
	}

	@Override
	public HomeDescDTO getHomeDescData(int home_seq) {
		return hdao.getHomeDescData(home_seq);
	}

	@Override
	public int modifyHomeDescData(HomeDescDTO hddto) {
		return hdao.modifyHomeDescData(hddto);
	}

	@Override
	public int modifyTitleHomeData(HomeDTO hdto) {
		return hdao.modifyTitleHomeData(hdto);
	}

	@Override
	public int modifyHomeFacSecAccData(HomeDTO hdto) {
		return hdao.modifyHomeFacSecAccData(hdto);
	}

	@Override
	public int modifyHomeLocData(HomeDTO hdto) {
		return hdao.modifyHomeLocData(hdto);
	}

	@Override
	public int modifyReserveCheckinData(HomeDTO hdto) {
		return hdao.modifyReserveCheckinData(hdto);
	}

	@Override
	public int modifyReserveNightData(HomeDTO hdto) {
		return hdao.modifyReserveNightData(hdto);
	}

	@Override
	public int modifyHomeStateData(HomeDTO hdto) {
		return hdao.modifyHomeStateData(hdto);
	}

	@Override
	public int modifyCalendar(HomeDTO hdto) {
		return hdao.modifyCalendar(hdto);
	}

	@Override
	public List<String> getCalendarDate(Map<String, String> map) {
		return hdao.getCalendarDate(map);
	}

	@Override
	public String getBlockedDate(int home_seq) {
		return hdao.getBlockedDate(home_seq);
	}

	@Override
	public int modifyHomeRulesDetails(HomeDTO hdto) {
		return hdao.modifyHomeRulesDetails(hdto);
	}
	

	@Override
	public List<ReservationDTO> getAllReservation(String member_email) {
		return hdao.getAllReservation(member_email);
	}

	@Override
	public List<GuestReviewDTO> getAllGuestReview(String member_email) {
		return hdao.getAllGuestReview(member_email);
	}

	@Override
	public List<HostReviewDTO> getAllHostReview(int home_seq) {
		return hdao.getAllHostReview(home_seq);
	}

	@Override
	public int guestReviewCount(String member_email) {
		return hdao.guestReviewCount(member_email);
	}

	@Override
	public int hostReivewCount(int home_Seq) {
		return hdao.hostReivewCount(home_Seq);
	}

	@Override
	public List<GuestReviewDTO> getSatisfaction() {
		return hdao.getSatisfaction();
	}

	@Override
	public List<GuestReviewDTO> getAccuracy() {
		return hdao.getAccuracy();
	}

	@Override
	public List<GuestReviewDTO> getCleanLiness() {
		return hdao.getCleanLiness();
	}

	@Override
	public List<GuestReviewDTO> getCheckin() {
		return hdao.getCheckin();
	}

	@Override
	public List<GuestReviewDTO> getAmenities() {
		return hdao.getAmenities();
	}

	@Override
	public List<GuestReviewDTO> getCommunication() {
		return hdao.getCommunication();
	}

	@Override
	public List<GuestReviewDTO> getLocation() {
		return hdao.getLocation();
	}

	@Override
	public List<GuestReviewDTO> getValue() {
		return hdao.getValue();
	}

	@Override
	public List<MessageDTO> getAllMessage(int home_seq) {
		return hdao.getAllMessage(home_seq);
	}

//	예지
	@Override
	public List<HomeDTO> getAllHomeDataMain() {
		return hdao.getAllHomeDataMain();
	}

	@Override
	public List<HomeDTO> getHomeOnMap(Map<String, Object> param) {
		return hdao.getHomeOnMap(param);
	}

	@Override
	public List<HomePicDTO> getHomePic() {
		return hdao.getHomePic();
	}
	
	@Override
	public List<HomeDTO> searchHomeData(List homeTypeList ,String homeTypeIsChecked, int people, List dates, String dateIsChecked) {
		return hdao.searchHomeData(homeTypeList, homeTypeIsChecked, people, dates, dateIsChecked);
	}

	@Override
	public List<HomeDTO> modalHomeData(Map<String, Object> param) {
	return hdao.modalHomeData(param);
	}

	
	//----------------지혜-----------------
	@Override
	public int updateBlockedDate(String blockedDate, int home_seq) {
		return hdao.updateBlockedDate(blockedDate, home_seq);
	}
	

}
