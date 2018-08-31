package kh.spring.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.LikeyDTO;
import kh.spring.dto.LikeyListDTO;
import kh.spring.interfaces.LikeyDAO;

@Component
public class LikeyDAOImpl implements LikeyDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSessionTemplate ssTemplate;

	@Override
	public int insertData(LikeyListDTO dto) {
		String sql = "insert into likeylist values(likeylist_seq.nextval,?,?,?)";
		return jdbcTemplate.update(sql,dto.getLikeyList_name(),dto.getMember_email(),dto.getHome_seq());
	}

	@Override
	public List<LikeyListDTO> getAlldata(String member_email) {
		return ssTemplate.selectList("Likey.getAlldata",member_email);
	}

	@Override
	public int insertLikeyData(LikeyDTO dto) {
		String sql = "insert into likey values(likey_seq.nextval,?,?,?)";
		return jdbcTemplate.update(sql,dto.getLikeyList_seq(),dto.getHome_seq(),dto.getMember_email());
	}

	@Override
	public List<HomeDTO> getHomeInfoLikey(int likeyList_seq) {
		return ssTemplate.selectList("Likey.getHomeInfoLikey",likeyList_seq);
	}

	@Override
	public List<LikeyDTO> getLikeyData(String member_email) {
		return ssTemplate.selectList("Likey.getLikeyData",member_email);
	}

	@Override
	public List<LikeyDTO> getLikeyHeart(int home_seq, String member_email) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("home_seq", home_seq);
		param.put("member_email", member_email);
		return ssTemplate.selectList("Likey.getLikeyHeart", param);
	}

	@Override
	public LikeyListDTO getLikeyListDTO(int likeyList_seq) {
		return ssTemplate.selectOne("Likey.getLikeyListDTO",likeyList_seq);
	}
	
	

}
