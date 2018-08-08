package kh.spring.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ProfileHomePicDTO;
import kh.spring.interfaces.MemberDAO;

@Component
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private SqlSessionTemplate template;

	
	@Override
	public MemberDTO printProfile(String userId) {
		return template.selectOne("Member.printProfile",userId);
	}


	@Override
	public String editProfile(MemberDTO dto) {
		template.update("Member.editProfile",dto);
		return dto.getMember_email();
	}


	@Override
	public int editPhoto(String systemName, String userId) {
		String sql="update member set member_picture=? where member_email=?";
		return jdbcTemplate.update(sql,systemName,userId);
	}


	@Override
	public MemberDTO getPhoto(String userId) {
		return template.selectOne("Member.getPhoto",userId);
	}


	@Override
	public int countHouse(String userId) {
		return template.selectOne("Member.countHouse",userId);
	}


	@Override
	public List<ProfileHomePicDTO> getHouse(String userId) {
		return template.selectList("Member.getHouse", userId);
	}



	
	
}
