package kh.spring.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
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

	@Override
	public int deleteHomeMainPicData(String filename, int seq) {
		String sql = "update home set home_main_pic = '' where home_seq = ?";
		return jdbcTemplate.update(sql, seq);
	}

	@Override
	public HomeDescDTO getHomeDescData(int seq) {
		return ssTemplate.selectOne("HomeDesc.getHomeDescData", seq);
	}

	@Override
	public int modifyHomeDescData(HomeDescDTO hddto) {
		String sql = "update home_desc set home_desc_explain=?, home_desc_space=?, home_desc_guest=?, home_desc_etc=?, home_desc_region=?, home_desc_traffic=?, home_desc_guestsel=? where home_seq = ?";

		return jdbcTemplate.update(sql, hddto.getHome_desc_explain(), hddto.getHome_desc_space(),
				hddto.getHome_desc_guest(), hddto.getHome_desc_etc(), hddto.getHome_desc_region(),
				hddto.getHome_desc_traffic(), hddto.getHome_desc_guestsel(), hddto.getHome_Seq());
	}

	@Override
	public int modifyTitleHomeData(HomeDTO hdto) {
		String sql = "update home set home_name = ?, home_contents = ? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_name(), hdto.getHome_contents(), hdto.getHome_seq());
	}

	@Override
	public int modifyHomeFacSecAccData(HomeDTO hdto) {
		String sql = "update home set home_amenities = ?, home_safety = ?, home_guest_access = ? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_amenities(), hdto.getHome_safety(), hdto.getHome_guest_access(),
				hdto.getHome_seq());
	}

	@Override
	public int modifyHomeLocData(HomeDTO hdto) {
		String sql = "update home set home_addr1 = ?, home_addr2 = ?, home_addr3 = ?, home_addr4 = ?, home_zipcode = ?, home_lat = ?, home_lng = ? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_addr1(), hdto.getHome_addr2(), hdto.getHome_addr3(),
				hdto.getHome_addr4(), hdto.getHome_zipcode(), hdto.getHome_lat(), hdto.getHome_lng(),
				hdto.getHome_seq());
	}

	@Override
	public int modifyReserveCheckinData(HomeDTO hdto) {
		String sql = "update home set home_checkin_start = ?, home_checkin_end = ?, home_checkout = ? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_checkin_start(), hdto.getHome_checkin_end(),
				hdto.getHome_checkout(), hdto.getHome_seq());
	}

	@Override
	public int modifyReserveNightData(HomeDTO hdto) {
		String sql = "update home set home_min_stay = ?, home_max_stay = ? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_min_stay(), hdto.getHome_max_stay(), hdto.getHome_seq());
	}

	@Override
	public int modifyHomeStateData(HomeDTO hdto) {
		String sql = "update home set home_state=?, home_rest_start = ?, home_rest_end = ? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_state(), hdto.getHome_rest_start(), hdto.getHome_rest_end(),
				hdto.getHome_seq());
	}

	@Override
	public int modifyCalendar(HomeDTO hdto) {
		String sql = "update home set home_blocked_date=?, home_reserve_possible = ?, home_price = ? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_blocked_date(), hdto.getHome_reserve_possible(),
				hdto.getHome_price(), hdto.getHome_seq());
	}

	@Override
	public List<String> getCalendarDate(Map<String, String> map) {
		return ssTemplate.selectList("Home.getCalendarDate", map);
	}

	@Override
	public String getBlockedDate(int home_seq) {
		return ssTemplate.selectOne("Home.getBlockedDate", home_seq);
	}

	@Override
	public int modifyHomeRulesDetails(HomeDTO hdto) {
		String sql = "update home set home_rules=?, home_details = ? where home_seq = ?";
		return jdbcTemplate.update(sql,hdto.getHome_rules(), hdto.getHome_details(), hdto.getHome_seq());
	}

//	예지
	
	@Override
	public List<HomeDTO> getAllHomeDataMain() {
		return ssTemplate.selectList("Home.getAllHomeDataMain");
	}
	
	@Override
	public List<HomeDTO> getHomeOnMap(Map<String, Object> param) {
		return ssTemplate.selectList("Home.getHomeOnMap", param);
	}
	
	@Override
	public List<HomePicDTO> getHomePic() {
		return ssTemplate.selectList("HomePic.getHomePic");
	}

	@Override
	public List<HomeDTO> searchHomeData(String homeType, int people, List dates, String dateIsChecked) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("homeType", homeType);
		param.put("people", people);
		param.put("dates", dates);
		param.put("dateIsChecked", dateIsChecked);
		return ssTemplate.selectList("Home.searchHomeData", param);
	}

	@Override
	public List<HomeDTO> modalHomeData(Map<String, Object> param) {
		return ssTemplate.selectList("Home.modalHomeData", param);
	}
}
