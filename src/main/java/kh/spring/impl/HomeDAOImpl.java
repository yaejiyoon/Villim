package kh.spring.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.dto.MapDTO;
import kh.spring.interfaces.HomeDAO;

@Component
public class HomeDAOImpl implements HomeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private SqlSessionTemplate ssTemplate;

	@Override
	public List<HomeDTO> getAllHomeData(String member_email) {
		return ssTemplate.selectList("Home.getAllHomeData", member_email);
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
		return jdbcTemplate.update(sql, hdto.getHome_rules(), hdto.getHome_details(), hdto.getHome_seq());
	}

	@Override
	public List<ReservationDTO> getAllReservation(String member_email) {
		return ssTemplate.selectList("Home.getAllReservation", member_email);
	}

	@Override
	public List<GuestReviewDTO> getAllGuestReview(String host_email) {
		return ssTemplate.selectList("Home.getGuestReview", host_email);
	}

	@Override
	public List<HostReviewDTO> getAllHostReview(int home_seq) {
		return ssTemplate.selectList("Home.getAllHostReview", home_seq);
	}

	@Override
	public int guestReviewCount(String member_email) {
		String sql = "select count(*) as count from guest_review where home_seq IN"+ 
				" (select home_seq from home where member_email=?)";
		return jdbcTemplate.queryForObject(sql, Integer.class, member_email);
	}

	@Override
	public int hostReivewCount(int home_seq) {
		String sql = "select count(*) from host_review where home_seq=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, home_seq);
	}

	@Override
	public List<GuestReviewDTO> getSatisfaction() {
		return ssTemplate.selectList("Home.getSatisfaction");
	}

	@Override
	public List<GuestReviewDTO> getAccuracy() {
		return ssTemplate.selectList("Home.getAccuracy");
	}

	@Override
	public List<GuestReviewDTO> getCleanLiness() {
		return ssTemplate.selectList("Home.getCleanLiness");
	}

	@Override
	public List<GuestReviewDTO> getCheckin() {
		return ssTemplate.selectList("Home.getCheckin");
	}

	@Override
	public List<GuestReviewDTO> getAmenities() {
		return ssTemplate.selectList("Home.getAmenities");
	}

	@Override
	public List<GuestReviewDTO> getCommunication() {
		return ssTemplate.selectList("Home.getCommunication");
	}

	@Override
	public List<GuestReviewDTO> getLocation() {
		return ssTemplate.selectList("Home.getLocation");
	}

	@Override
	public List<GuestReviewDTO> getValue() {
		return ssTemplate.selectList("Home.getValue");
	}

	@Override
	public List<MessageDTO> getAllMessage(int home_seq) {
		return ssTemplate.selectList("Home.getAllMessage");
	}




	//----------------지혜-----------------
	@Override
	public int updateBlockedDate(String blockedDate, int home_seq) {
		String sql = "UPDATE home SET HOME_BLOCKED_DATE = HOME_BLOCKED_DATE||? WHERE HOME_SEQ=?";
		return jdbcTemplate.update(sql,blockedDate,home_seq);
	}

	//	예지

	@Override
	public List<HomeDTO> getAllHomeDataMain() {
		return ssTemplate.selectList("Home.getAllHomeDataMain");
	}

	@Override
	public List<HomeDTO> getHomeOnMap(MapDTO mdto) {
		return ssTemplate.selectList("Home.getHomeOnMap", mdto);
	}

	@Override
	public List<HomePicDTO> getHomePic() {
		return ssTemplate.selectList("HomePic.getHomePic");
	}

	@Override
	public List<HomeDTO> getAllHomeData() {
		return ssTemplate.selectList("Home.getAllHomeDataMain");
	}

	//---찬연

	@Override
	public int insertFirstHome(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.insert("Home.firststepbyone",hdto);
	}

	@Override
	public int modifyHomeType(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.firststepbytwo", hdto);
	}

	@Override
	public HomeDTO getNewestHomeData() {
		// TODO Auto-generated method stub
		return ssTemplate.selectOne("Home.getNesestHomeData");
	}

	@Override
	public int modifyBathbed(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.firststepbythree", hdto);
	}

	@Override
	public int modifyCommodity(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.firststepbyfinal", hdto);
	}

	@Override
	public int modifyHomepicture(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.secondstepbyone", hdto);
	}

	@Override
	public int insertHomeDescData(HomeDescDTO hddto) {
		// TODO Auto-generated method stub
		return ssTemplate.insert("HomeDesc.secondstepbytwosub", hddto);
	}

	@Override
	public int modifyContents(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.secondstepbytwo", hdto);
	}

	@Override
	public int modifyHomename(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.secondstepbyfinal", hdto);
	}

	@Override
	public int modifyHomerule(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.thirdstepbyone",hdto);
	}

	@Override
	public int modifyHomecheck(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.thirdstepbytwo", hdto);
	}

	@Override
	public int modifyHomestay(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.thirdstepbythird", hdto);
	}

	@Override
	public int modifyHomeblock(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.thirdstepbyfore", hdto);
	}

	@Override
	public int modifyHomeprice(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.thirdstepbyfive", hdto);
	}


}
