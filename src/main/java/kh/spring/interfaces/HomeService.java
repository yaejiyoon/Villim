package kh.spring.interfaces;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kh.spring.dto.AccountDTO;
import kh.spring.dto.BedDTO;
import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.PaymentDTO;
import kh.spring.dto.ReservationDTO;

public interface HomeService {
	public List<PaymentDTO> getAllPayment(Map<String, Object> map);

	public int insertAccount(AccountDTO adto);

	public List<AccountDTO> getAllAccount(String member_email);

	public List<HomeDTO> getAllHomeData(String member_email);

	public HomeDTO getOldestHomeData(String member_email);

	public HomeDTO getHomeData(int home_seq);

	public int addHomePicData(HomePicDTO dto);

	public List<HomePicDTO> getHomePicData(int seq);

	public int addHomeRepresentData(String fileName, int seq);

	public int deleteHomePicData(String fileName);

	public int deleteHomeMainPicData(String filename, int seq);

	public HomeDescDTO getHomeDescData(int home_seq);

	public int modifyHomeDescData(HomeDescDTO hddto);

	public int modifyTitleHomeData(HomeDTO hdto);

	public int modifyHomeFacSecAccData(HomeDTO hdto);

	public int modifyHomeRulesDetails(HomeDTO hdto);

	public int modifyHomeLocData(HomeDTO hdto);

	public int modifyReserveCheckinData(HomeDTO hdto);

	public int modifyReserveNightData(HomeDTO hdto);

	public int modifyHomeStateData(HomeDTO hdto);

	public int modifyCalendar(HomeDTO hdto);

	public List<String> getCalendarDate(Map<String, String> map);

	public String getBlockedDate(int home_seq);
	
	public int modifyPolicy(HomeDTO hdto);

	public List<ReservationDTO> getAllReservation(String member_email);

	public List<GuestReviewDTO> getAllGuestReview(HashMap<String, Object> map);

	public List<HostReviewDTO> getAllHostReview(int home_seq);

	public int guestReviewAllCount(String member_email);

	public int guestReviewCount(HashMap<String, Object> map);

	public int hostReivewCount(int home_Seq);

	public List<GuestReviewDTO> getSatisfaction(int home_seq);

	public List<GuestReviewDTO> getAccuracy(int home_seq);

	public List<GuestReviewDTO> getCleanLiness(int home_seq);

	public List<GuestReviewDTO> getCheckin(int home_seq);

	public List<GuestReviewDTO> getAmenities(int home_seq);

	public List<GuestReviewDTO> getCommunication(int home_seq);

	public List<GuestReviewDTO> getLocation(int home_seq);

	public List<GuestReviewDTO> getValue(int home_seq);
	
	public List<MessageDTO> getAllMessage(String member_email);

	public int modifyHomeType(HomeDTO hdto);

	public int modifybed(BedDTO bdto);

	public int getGuestReviewPaging(HashMap<String, Object> map);

	public String getReviewPageNavi(int currentPageNo, int home_seq, Map<String, Object> map);

	public List<HomeDTO> getSimilarHome(HomeDTO hdto);

	public List<ReservationDTO> getReservation(int home_seq);

	public List<ReservationDTO> getWaitReserve(Map<String, Object> map);

	public List<ReservationDTO> getApprovalReserve(Map<String, Object> map);

	public int modifyCountdown(long getTime, int reservation_seq);

	public int modifyReservState(int reservation_seq);

	public int modifyHomeView(int home_seq);

	public List<ReservationDTO> getCalReservation(Map<String, Object> map);
	
	
	
	
	
	
	
	//----------------지혜-----------------
	public int updateBlockedDate(String blockedDate,int home_seq);
	
	public BedDTO getBedData(int home_seq);
	
	
//	예지
	public List<HomeDTO> getAllHomeDataMain();
	
	public List<HomeDTO> getHomeOnMap(Map<String, Object> param);
	
	public List<HomePicDTO> getHomePic();
	
	public List<HomeDTO> modalHomeData(Map<String, Object> param);
	
	public List<HomeDTO> getParis();

}
