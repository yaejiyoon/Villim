package kh.spring.interfaces;

import kh.spring.dto.MemberDTO;

public interface MemberService {
	public MemberDTO printProfile(MemberDTO dto);
	public String editProfile(MemberDTO dto);
}
