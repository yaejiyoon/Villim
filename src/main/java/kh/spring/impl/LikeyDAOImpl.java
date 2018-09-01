package kh.spring.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.LikeyListDTO;
import kh.spring.interfaces.LikeyDAO;

@Component
public class LikeyDAOImpl implements LikeyDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSessionTemplate ssTemplate;

	@Override
	public int insertDate(LikeyListDTO dto) {
		String sql = "insert into likeylist values(likeylist_seq.nextval,?,?)";
		return jdbcTemplate.update(sql,dto.getLikeyList_name(),dto.getMember_email());
	}

	@Override
	public List<LikeyListDTO> getAlldata(String member_email) {
		return ssTemplate.selectList("Likey.getAlldata",member_email);
	}

}
