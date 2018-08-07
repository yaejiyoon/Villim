package kh.spring.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberDAO;

@Component
public class MemberDAOImpl implements MemberDAO{


	@Autowired
	private SqlSessionTemplate template;

	
	@Override
	public MemberDTO printProfile(MemberDTO dto) {
		return template.selectOne("Member.printProfile",dto);
	}


	@Override
	public String editProfile(MemberDTO dto) {
		template.update("Member.editProfile",dto);
		return dto.getMember_email();
	}
	
	
}
