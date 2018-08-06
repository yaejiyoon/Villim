package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.interfaces.HomeDAO;
import kh.spring.interfaces.HomeService;

@Component
public class HomeServiceImpl implements HomeService{
	
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

}
