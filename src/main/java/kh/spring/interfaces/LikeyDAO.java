package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.LikeyListDTO;

public interface LikeyDAO {
	public int insertDate(LikeyListDTO dto);
	
	public List<LikeyListDTO> getAlldata(String member_email);
}
