package kh.spring.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.interfaces.HomeDAO;
import kh.spring.interfaces.HomeService;

@Component
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeDAO hdao;

	@Override
	public List<HomeDTO> getAllHomeData() {
		return hdao.getAllHomeData();
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

}
