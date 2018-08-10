package kh.spring.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.interfaces.HomeDAO;

@Component
public class HomeDAOImpl implements HomeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSessionTemplate ssTemplate;
	
	@Override
	public List<HomeDTO> getAllHomeData() {
		return ssTemplate.selectList("Home.getAllHomeData");
	}

	@Override
	public HomeDTO getOldestHomeData() {
		return ssTemplate.selectOne("Home.getOldestHomeData");
	}

	@Override
	public HomeDTO getHomeData(int home_seq) {
		return ssTemplate.selectOne("Home.getHomeData", home_seq);
	}

	@Override
	public int addHomePicData(HomePicDTO dto) {
		String sql = "insert into home_pic values(home_pic_seq.nextval,?,?)";
		return jdbcTemplate.update(sql, dto.getHome_seq(), dto.getHome_pic_name());
	}

	@Override
	public List<HomePicDTO> getHomePicData(int seq) {
		return ssTemplate.selectList("HomePic.getHomePicData", seq);
	}

	@Override
	public int addHomeRepresentData(String fileName, int seq) {
		String sql = "update home set home_main_pic = ? where home_seq = ?";
		return jdbcTemplate.update(sql, fileName, seq); 
	}

	@Override
	public int deleteHomePicData(String fileName) {
		String sql = "delete home_pic where home_pic_name = ?";
		return jdbcTemplate.update(sql, fileName);
	}
	
	

}
