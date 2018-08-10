package kh.spring.impl;

import java.util.List;

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
		
		String sql = "insert into member values(member_seq.nextval,?,?,?,?,?,'N',sysdate,'null',?)";
		return template.update(sql, dto.getMember_email(),
				dto.getMember_name(),dto.getMember_pw(),dto.getMember_birth(),
				dto.getMember_picture(),dto.getMember_phone());
	}

	@Override
	public boolean isMember(MemberDTO dto) {
		String sql = "select count(*) from member where member_email=? and member_pw=?";
		boolean result = false;
		int count = template.queryForObject(sql, new Object[] {dto.getMember_email(), dto.getMember_pw()}, Integer.class);
		if(count >0) {
		return true;
		}
		return result;
	}

}
