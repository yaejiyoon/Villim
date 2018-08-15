package kh.spring.interfaces;

import java.util.List;
import java.util.Map;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;

public interface HomeService {
	public List<HomeDTO> getAllHomeData();

	public HomeDTO getOldestHomeData();

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

	public int modifyHomeLocData(HomeDTO hdto);

	public int modifyReserveCheckinData(HomeDTO hdto);

	public int modifyReserveNightData(HomeDTO hdto);
	
	public int modifyHomeStateData(HomeDTO hdto);
	
	public int modifyCalendar(HomeDTO hdto);
	
	public List<String> getCalendarDate(Map<String, String> map);
	
}
