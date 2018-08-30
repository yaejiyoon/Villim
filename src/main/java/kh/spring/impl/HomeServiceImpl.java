package kh.spring.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import kh.spring.dto.BedDTO;
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
	public HomeDTO getOldestHomeData(String member_email) {
		return hdao.getOldestHomeData(member_email);
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

	// 예지
	@Override
	public List<HomeDTO> getAllHomeDataMain() {
		return hdao.getAllHomeDataMain();
	}

	
	public List<ReservationDTO> getAllReservation(String member_email) {
		return hdao.getAllReservation(member_email);
	}

	@Override
	public List<GuestReviewDTO> getAllGuestReview(HashMap<String, Object> map) {
		return hdao.getAllGuestReview(map);
	}

	@Override
	public List<HostReviewDTO> getAllHostReview(int home_seq) {
		return hdao.getAllHostReview(home_seq);
	}

	@Override
	public int guestReviewAllCount(String member_email) {
		return hdao.guestReviewAllCount(member_email);
	}

	@Override
	public int hostReivewCount(int home_Seq) {
		return hdao.hostReivewCount(home_Seq);
	}

	@Override
	public List<GuestReviewDTO> getSatisfaction(int home_seq) {
		return hdao.getSatisfaction(home_seq);
	}

	@Override
	public List<GuestReviewDTO> getAccuracy(int home_seq) {
		return hdao.getAccuracy(home_seq);
	}

	@Override
	public List<GuestReviewDTO> getCleanLiness(int home_seq) {
		return hdao.getCleanLiness(home_seq);
	}

	@Override
	public List<GuestReviewDTO> getCheckin(int home_seq) {
		return hdao.getCheckin(home_seq);
	}

	@Override
	public List<GuestReviewDTO> getAmenities(int home_seq) {
		return hdao.getAmenities(home_seq);
	}

	@Override
	public List<GuestReviewDTO> getCommunication(int home_seq) {
		return hdao.getCommunication(home_seq);
	}

	@Override
	public List<GuestReviewDTO> getLocation(int home_seq) {
		return hdao.getLocation(home_seq);
	}

	@Override
	public List<GuestReviewDTO> getValue(int home_seq) {
		return hdao.getValue(home_seq);
	}

	@Override
	public List<MessageDTO> getAllMessage(String member_email) {
		return hdao.getAllMessage(member_email);
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
	public int modifyPolicy(HomeDTO hdto) {
		return hdao.modifyPolicy(hdto);
	}

	@Override
	public int modifybed(BedDTO bdto) {
		return hdao.modifybed(bdto);
	}

	@Override
	public int getGuestReviewPaging(HashMap<String, Object> map) {
		return hdao.getGuestReviewPaging(map);
	}

	@Override
	public String getReviewPageNavi(int currentPageNo, int home_seq, Map<String, Object> map) {
		return hdao.getReviewPageNavi(currentPageNo, home_seq, map);
	}

	@Override
	public List<HomeDTO> getSimilarHome(HomeDTO hdto) {
		return hdao.getSimilarHome(hdto);
	}

	@Override
	public List<ReservationDTO> getWaitReserve(Map<String, Object> map) {
		return hdao.getWaitReserve(map);
	}

	@Override
	public List<ReservationDTO> getReservation(int home_seq) {
		return hdao.getReservation(home_seq);
	}

	@Override
	public int modifyReservState(int reservation_seq) {
		return hdao.modifyReservState(reservation_seq);
	}

	@Override
	public List<ReservationDTO> getApprovalReserve(Map<String, Object> map) {
		return hdao.getApprovalReserve(map);
	}

	@Override
	public int modifyHomeView(int home_seq) {
		return hdao.modifyHomeView(home_seq);
	}
	@Override
	public List<ReservationDTO> getCalReservation(Map<String, Object> map) {
		return hdao.getCalReservation(map);
	}
	@Override
	public List<HomeDTO> searchHomeData(List homeTypeList ,String homeTypeIsChecked, int people, List dates, String dateIsChecked) {
		return hdao.searchHomeData(homeTypeList, homeTypeIsChecked, people, dates, dateIsChecked);
	}

	@Override
	public List<HomeDTO> modalHomeData(Map<String, Object> param) {
	return hdao.modalHomeData(param);
	}

	
	// ----------------지혜-----------------
	@Override
	public int updateBlockedDate(String blockedDate, int home_seq) {
		return hdao.updateBlockedDate(blockedDate, home_seq);
	}

	@Override
	public int guestReviewCount(HashMap<String, Object> map) {
		return hdao.guestReviewCount(map);
	}

	@Override
	public int modifyCountdown(long getTime, int reservation_seq) {
		return hdao.modifyCountdown(getTime, reservation_seq);
	}

	@Override
	public BedDTO getBedData(int home_seq) {
		return hdao.getBedData(home_seq);
	}

	
//	----찬연 ----
	@Override

	public int insertFirstHome(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.insertFirstHome(hdto);
	}


	@Override

	public int modifyHomeType(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomeType(hdto);
	}


	@Override

	public HomeDTO getNewestHomeData() {
		// TODO Auto-generated method stub
		return hdao.getNewestHomeData();
	}


	@Override

	public int modifyBathbed(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyBathbed(hdto);
	}


	@Override

	public int modifyCommodity(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyCommodity(hdto);
	}


	@Override

	public int modifyHomepicture(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomepicture(hdto);
	}


	@Override

	public int insertHomeDescData(HomeDescDTO hddto) {
		// TODO Auto-generated method stub
		return hdao.insertHomeDescData(hddto);
	}


	@Override

	public int modifyContents(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyContents(hdto);
	}


	@Override

	public int modifyHomename(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomename(hdto);
	}


	@Override
	public int modifyHomerule(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomerule(hdto);
	}


	@Override
	public int modifyHomecheck(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomecheck(hdto);
	}


	@Override
	public int modifyHomestay(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomestay(hdto);
	}


	@Override
	public int modifyHomeblock(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomeblock(hdto);
	}


	@Override
	public int modifyHomeprice(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return hdao.modifyHomeprice(hdto);
	}
}
