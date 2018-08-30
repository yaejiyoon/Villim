package kh.spring.interfaces;

import java.util.List;
import java.util.Map;

import kh.spring.dto.BedDTO;
import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.ReservationDTO;

public interface HomeDAO {
	public List<HomeDTO> getAllHomeData(String member_email);
	
	public List<HomeDTO> getAllHomeData();

	public HomeDTO getOldestHomeData();

	public HomeDTO getHomeData(int home_seq);

	public int addHomePicData(HomePicDTO dto);

	public List<HomePicDTO> getHomePicData(int seq);

	public int addHomeRepresentData(String fileName, int seq);

	public int deleteHomePicData(String filename);

	public int deleteHomeMainPicData(String filename, int seq);

	public HomeDescDTO getHomeDescData(int home_seq);

	public int modifyHomeDescData(HomeDescDTO hddto);

	public int modifyTitleHomeData(HomeDTO hdto);

	public int modifyHomeFacSecAccData(HomeDTO hdto);

	public int modifyHomeLocData(HomeDTO hdto);

	public int modifyReserveCheckinData(HomeDTO hdto);

	public int modifyReserveNightData(HomeDTO hdto);

	public int modifyHomeStateData(HomeDTO hdto);

	public int modifyCalendar(HomeDTO hdto);

	public List<String> getCalendarDate(Map<String, String> map);

	public String getBlockedDate(int home_seq);

	public int modifyHomeRulesDetails(HomeDTO hdto);

	public List<ReservationDTO> getAllReservation(String member_email);

	public List<GuestReviewDTO> getAllGuestReview(String member_email);

	public List<HostReviewDTO> getAllHostReview(int home_seq);

	public int guestReviewCount(String member_email);

	public int hostReivewCount(int home_Seq);

	public List<GuestReviewDTO> getSatisfaction();

	public List<GuestReviewDTO> getAccuracy();

	public List<GuestReviewDTO> getCleanLiness();

	public List<GuestReviewDTO> getCheckin();

	public List<GuestReviewDTO> getAmenities();

	public List<GuestReviewDTO> getCommunication();

	public List<GuestReviewDTO> getLocation();

	public List<GuestReviewDTO> getValue();

	public List<MessageDTO> getAllMessage(int home_seq);

	
	//----------------지혜-----------------
	public int updateBlockedDate(String blockedDate,int home_seq);
	
	public BedDTO getBedData(int home_seq);
	
	
//	예지
	public List<HomeDTO> getAllHomeDataMain();
	
	public List<HomeDTO> getHomeOnMap(Map<String, Object> param);
	
	public List<HomePicDTO> getHomePic();
	
	public List<HomeDTO> modalHomeData(Map<String, Object> param);
}
