package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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

}
