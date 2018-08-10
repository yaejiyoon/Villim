package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.MemberDTO;


public interface MemberDAO {
	
	public int signup(MemberDTO dto);
	public boolean isMember(MemberDTO dto);
	
}
