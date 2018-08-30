package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.LikeyDTO;
import kh.spring.dto.LikeyListDTO;
import kh.spring.interfaces.LikeyDAO;
import kh.spring.interfaces.LikeyService;

@Component
public class LikeyServiceImpl implements LikeyService{
	
	@Autowired
	private LikeyDAO likeyDAO;

	@Override
	public int insertData(LikeyListDTO dto) {
		return likeyDAO.insertData(dto);
	}

	@Override
	public List<LikeyListDTO> getAlldata(String member_email) {
		return likeyDAO.getAlldata(member_email);
	}

	@Override
	public int insertLikeyData(LikeyDTO dto) {
		return likeyDAO.insertLikeyData(dto);
	}

	@Override
	public List<HomeDTO> getHomeInfoLikey(int likeyList_seq) {
		return likeyDAO.getHomeInfoLikey(likeyList_seq);
	}

	@Override
	public List<LikeyDTO> getLikeyData(String member_email) {
		return likeyDAO.getLikeyData(member_email);
	}

	@Override
	public List<LikeyDTO> getLikeyHeart(int home_seq, String member_email) {
		return likeyDAO.getLikeyHeart(home_seq, member_email);
	}

}
