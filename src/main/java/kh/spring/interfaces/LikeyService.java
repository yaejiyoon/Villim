package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.LikeyDTO;
import kh.spring.dto.LikeyListDTO;

public interface LikeyService {
	public int insertData(LikeyListDTO dto);
	
	public List<LikeyListDTO> getAlldata(String member_email);
	
	public int insertLikeyData(LikeyDTO dto);
}
