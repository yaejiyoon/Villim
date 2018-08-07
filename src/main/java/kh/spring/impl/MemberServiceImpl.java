package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberDAO;
import kh.spring.interfaces.MemberService;

@Component
public class MemberServiceImpl implements MemberService{

	@Autowired
	public MemberDAO dao;

	
	@Override
	public MemberDTO printProfile(MemberDTO dto) {
		return dao.printProfile(dto);
	}


	@Override
	public String editProfile(MemberDTO dto) {
		 dao.editProfile(dto);
		return dto.getMember_email();
	}
	
	
	
	
}
