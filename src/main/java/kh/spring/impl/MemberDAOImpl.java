package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberDAO;

@Component
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	JdbcTemplate template;

	@Override
	public int signup(MemberDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
