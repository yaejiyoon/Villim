package kh.spring.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.AccountDTO;
import kh.spring.dto.BedDTO;
import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomeDescDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.PaymentDTO;
import kh.spring.dto.ReservationDTO;
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
	public HomeDTO getOldestHomeData(String member_email) {
		return ssTemplate.selectOne("Home.getOldestHomeData", member_email);
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
	public List<ReservationDTO> getReservation(int home_seq) {
		return ssTemplate.selectList("Home.getReservation", home_seq);
	}

	@Override
	public List<ReservationDTO> getWaitReserve(Map<String, Object> map) {
		return ssTemplate.selectList("Home.getWaitReservation", map);
	}

	@Override
	public List<ReservationDTO> getApprovalReserve(Map<String, Object> map) {
		return ssTemplate.selectList("Home.getApprovalReservation", map);
	}

	@Override
	public List<GuestReviewDTO> getAllGuestReview(HashMap<String, Object> map) {
		return ssTemplate.selectList("Home.getAllGuestReview", map);
	}

	@Override
	public List<HostReviewDTO> getAllHostReview(int home_seq) {
		return ssTemplate.selectList("Home.getAllHostReview", home_seq);
	}

	@Override
	public int guestReviewAllCount(String member_email) {
		String sql = "select count(*) as count from guest_review where home_seq IN"
				+ " (select home_seq from home where member_email=?)";
		return jdbcTemplate.queryForObject(sql, Integer.class, member_email);
	}

	@Override
	public int guestReviewCount(HashMap<String, Object> map) {
		return ssTemplate.selectOne("Home.guestReviewCount", map);
	}

	@Override
	public int hostReivewCount(int home_seq) {
		String sql = "select count(*) from host_review where home_seq=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, home_seq);
	}

	@Override
	public List<GuestReviewDTO> getSatisfaction(int home_seq) {
		return ssTemplate.selectList("Home.getSatisfaction", home_seq);
	}

	@Override
	public List<GuestReviewDTO> getAccuracy(int home_seq) {
		return ssTemplate.selectList("Home.getAccuracy", home_seq);
	}

	@Override
	public List<GuestReviewDTO> getCleanLiness(int home_seq) {
		return ssTemplate.selectList("Home.getCleanLiness", home_seq);
	}

	@Override
	public List<GuestReviewDTO> getCheckin(int home_seq) {
		return ssTemplate.selectList("Home.getCheckin", home_seq);
	}

	@Override
	public List<GuestReviewDTO> getAmenities(int home_seq) {
		return ssTemplate.selectList("Home.getAmenities", home_seq);
	}

	@Override
	public List<GuestReviewDTO> getCommunication(int home_seq) {
		return ssTemplate.selectList("Home.getCommunication", home_seq);
	}

	@Override
	public List<GuestReviewDTO> getLocation(int home_seq) {
		return ssTemplate.selectList("Home.getLocation", home_seq);
	}

	@Override
	public List<GuestReviewDTO> getValue(int home_seq) {
		return ssTemplate.selectList("Home.getValue", home_seq);
	}

	@Override
	public List<MessageDTO> getAllMessage(String member_email) {
		return ssTemplate.selectList("Home.getAllMessage", member_email);
	}

	@Override
	public int modifyPolicy(HomeDTO hdto) {
		String sql = "update home set home_policy=? where home_seq = ?";
		return jdbcTemplate.update(sql, hdto.getHome_policy(), hdto.getHome_seq());
	}

	@Override
	public int modifybed(BedDTO bdto) {
		String sql = "update bed set bed_single=?, bed_double=?, bed_queen=? where home_seq = ?";
		return jdbcTemplate.update(sql, bdto.getBed_single(), bdto.getBed_double(), bdto.getBed_queen(),
				bdto.getHome_seq());
	}

	@Override
	public int getGuestReviewPaging(HashMap<String, Object> map) {
		return ssTemplate.selectOne("Home.getGuestReviewPaging", map);
	}

	@Override
	public List<HomeDTO> getSimilarHome(HomeDTO hdto) {
		return ssTemplate.selectList("Home.getSimilarHome", hdto);
	}

	@Override
	public int modifyCountdown(long getTime, int reservation_seq) {
		String sql = "update reservation set reserv_countdown=? where reservation_seq=?";
		return jdbcTemplate.update(sql, getTime, reservation_seq);
	}

	@Override
	public int modifyReservState(int reservation_seq) {
		String sql = "update reservation set reserv_state = 3 where reservation_seq=?";
		return jdbcTemplate.update(sql, reservation_seq);
	}

	@Override
	public int modifyHomeView(int home_seq) {
		String sql = "update home set home_view = home_view + 1 where home_seq=?";
		return jdbcTemplate.update(sql, home_seq);
	}

	@Override
	public List<ReservationDTO> getCalReservation(Map<String, Object> map) {
		return ssTemplate.selectList("Home.getCalReservation", map);
	}

	@Override
	public String getReviewPageNavi(int currentPageNo, int home_seq, Map<String, Object> map) {
		int count = ssTemplate.selectOne("Home.getGuestReviewPaging", map);
		System.out.println("navi: " + count);
		System.out.println("seq:" + home_seq);

		int recordTotalCount = count;

		int recordCountPerPage = 5;
		int naviCountPerPage = 3;
		int pageTotalCount = 0;

		if (recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}

		int currentPage = currentPageNo;

		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}

		// 네비게이터 스타트번호와 끝번호 나타내기
		int startNavi = (currentPage - 1) / naviCountPerPage * naviCountPerPage + 1;
		// 네비게이터가 시작 값; 딱 떨어지는 값의 시작페이지가 이상하기 때문에 1을 빼줘야한다.
		// currentPage / naviCountPerPage * naviCountPerPage + 1;
		int endNavi = startNavi + (naviCountPerPage - 1); // 네비게이터 끝 값

		System.out.println("startNavi:" + startNavi);
		System.out.println("endNavi:" + endNavi);

		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}

		boolean needPrev = true;
		boolean needNext = true;

		if (startNavi == 1) {
			needPrev = false;
		}

		if (endNavi == pageTotalCount) {
			needNext = false;
		}

		StringBuilder sb = new StringBuilder();

		if (home_seq == 0) {
			// if (needPrev) {
			// sb.append("<li><a href='hostHomeAchievement.do?currentPage=" + (startNavi -
			// 1)
			// + "'aria-label='Previous'><span aria-hidden='true'>&raquo;</span></a></li>");
			// }

			if (currentPage == 1) {
				sb.append("<li class='disabled'><a href='javascript:void(0);' id='naviPrev'> < </a></li>");
			} else {
				sb.append("<li><a href='hostHomeAchievement.do?currentPage=" + (startNavi - 1)
						+ "' id='naviPrev'> < </a></li>");
			}

			for (int i = startNavi; i <= endNavi; i++) {
				if (currentPage == i) {
					sb.append("<li><a href='hostHomeAchievement.do?currentPage=" + i + "'> <b>" + i + "</b></a></li>");
				} else {
					sb.append("<li><a href='hostHomeAchievement.do?currentPage=" + i + "'>" + i + "</a></li>");

				}

			}

			if (currentPage == pageTotalCount) {
				sb.append("<li class='disabled'><a href='javascript:void(0);'id='naviNext'> > </a></li>");
			} else {
				sb.append("<li ><a href='hostHomeAchievement.do?seq=" + home_seq + "&currentPage=" + (endNavi + 1)
						+ "' id='naviNext' > > </a></li>");

			}
			// if (needNext) {
			// sb.append("<a href='hostHomeAchievement.do?currentPage=" + (endNavi + 1)
			// + "'aria-label='Next'><span aria-hidden='true'>&raquo;</span></a>");
			// }
		} else {
			// if (needPrev) {
			// sb.append("<li><a href='hostHomeAchievement.do?seq=" + home_seq +
			// "&currentPage=" + (startNavi - 1)
			// + "'aria-label='Previous'><span aria-hidden='true'>&raquo;</span></a></li>");
			// }
			if (currentPage == 1) {
				sb.append("<li class='disabled'><a href='javascript:void(0);' id='naviPrev'> < </a></li>");
			} else {
				sb.append("<li><a href='hostHomeAchievement.do?currentPage=" + (startNavi - 1)
						+ "' id='naviPrev'> < </a></li>");
			}

			for (int i = startNavi; i <= endNavi; i++) {
				if (currentPage == i) {
					sb.append("<li><a href='hostHomeAchievement.do?seq=" + home_seq + "&currentPage=" + i + "'> <b>" + i
							+ "</b></a></li>");
				} else {
					sb.append("<li><a href='hostHomeAchievement.do?seq=" + home_seq + "&currentPage=" + i + "'>" + i
							+ "</a></li>");

				}
			}
			if (currentPage == pageTotalCount) {
				sb.append("<li class='disabled'><a href='javascript:void(0);'id='naviNext'> > </a></li>");
			} else {
				sb.append("<li ><a href='hostHomeAchievement.do?seq=" + home_seq + "&currentPage=" + (endNavi + 1)
						+ "' id='naviNext' > > </a></li>");

			}
			// if (needNext) {
			// sb.append("<a href='hostHomeAchievement.do?seq=" + home_seq + "&currentPage="
			// + (endNavi + 1)
			// + "'aria-label='Next'><span aria-hidden='true'>&raquo;</span></a>");
			// }
		}

		// if (currentPage == 1) {
		// sb.append("<li class='disabled'><a href='javascript:void(0);' id='naviPrev'>
		// < </a></li>");
		// }else {
		// sb.append("<li><a href='javascript:void(0);'
		// onclick='pageFunction("+(currentPage - 1)+","+home_seq+");' id='naviPrev'> <
		// </a></li>");
		// }
		//
		// for (int i = startNavi; i <= endNavi; i++) {
		// if (currentPage == i) {
		// sb.append("<li class='active'><a href='javascript:void(0);'
		// class='naviCurrentPage' onclick='pageFunction("+i+","+home_seq+");'> <b>" + i
		// + "</b></a></li>");
		// } else {
		// sb.append("<li><a href='javascript:void(0);' class='naviPage'
		// onclick='pageFunction("+i+","+home_seq+");'>" + i + "</a></li>");
		// }
		// }

		// if(endNavi == pageTotalCount) {
		// }

		// if(currentPage == pageTotalCount){
		// sb.append("<li class='disabled'><a href='javascript:void(0);'id='naviNext'> >
		// </a></li>");
		// }else {
		// sb.append("<li ><a href='javascript:void(0);'id='naviNext'
		// onclick='pageFunction("+(currentPage + 1)+","+home_seq+");'> > </a></li>");
		//
		// }
		//
		// if (needNext) {
		// }

		return sb.toString();
	}

	// ----------------지혜-----------------
	@Override
	public int updateBlockedDate(String blockedDate, int home_seq) {
		String sql = "UPDATE home SET HOME_BLOCKED_DATE = HOME_BLOCKED_DATE||? WHERE HOME_SEQ=?";
		return jdbcTemplate.update(sql, blockedDate, home_seq);
	}

	@Override
	public BedDTO getBedData(int home_seq) {
		return ssTemplate.selectOne("Home.getBedData", home_seq);
	}

	@Override
	public int updateBlocked(String blockedDate, int home_seq) {
		String sql = "update home set home_blocked_date=? where home_seq=?";
		return jdbcTemplate.update(sql, blockedDate, home_seq);
	}

	// 예지

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
	public List<HomeDTO> modalHomeData(Map<String, Object> param) {
		return ssTemplate.selectList("Home.modalHomeData", param);
	}

	@Override
	public List<HomeDTO> getParis() {
		return ssTemplate.selectList("Home.getParis");
	}

	@Override
	public List<HomeDTO> getNewyork() {
		return ssTemplate.selectList("Home.getNewyork");
	}

	@Override
	public List<HomeDTO> getRome() {
		return ssTemplate.selectList("Home.getRome");
	}

	@Override
	public List<HomeDTO> getLondon() {
		return ssTemplate.selectList("Home.getLondon");
	}

	@Override
	public List<HomeDTO> getPraha() {
		return ssTemplate.selectList("Home.getPraha");
	}

	@Override
	public List<HomeDTO> getMadrid() {
		return ssTemplate.selectList("Home.getMadrid");
	}

	@Override
	public List<AccountDTO> getAllAccount(String member_email) {
		return ssTemplate.selectList("Home.getAllAccount", member_email);
	}

	@Override
	public int insertAccount(AccountDTO adto) {
		String sql = "insert into account values(account_seq.nextval, ?,?,?,?)";
		return jdbcTemplate.update(sql, adto.getHost_email(), adto.getAccount_bank(), adto.getAccount_number(),adto.getAccount_member_number());
	}

	@Override
	public List<PaymentDTO> getAllPayment(Map<String, Object> map) {
		return ssTemplate.selectList("Home.getAllPayment", map);
	}

	@Override
	public int deleteBed(int home_seq) {
		String sql = "delete from bed where home_seq = ?";
		return jdbcTemplate.update(sql, home_seq);

	}

	@Override
	public int insertBed(int home_seq) {
		String sql = "insert into bed values(bed_seq.nextval,?,'0','0','0')";
		return jdbcTemplate.update(sql, home_seq);
	}

	@Override
	public int modifyHomePrice(HomeDTO hdto) {
		String sql = "update table home set home_price = ? where home_seq = ? ";
		return jdbcTemplate.update(sql, hdto.getHome_price(), hdto.getHome_seq());
	}

	@Override
	public List<PaymentDTO> getGapDate(Map<String, Object> map) {
		return ssTemplate.selectList("Home.getGapDate", map);
	}

	// ---찬연

	@Override
	public int insertFirstHome(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.insert("Home.firststepbyone", hdto);
	}

	@Override
	public int modifyHomeType(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.firststepbytwo", hdto);
	}

	@Override
	public HomeDTO getNewestHomeData(String email) {
		// TODO Auto-generated method stub
		return ssTemplate.selectOne("Home.getNesestHomeData", email);
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
		return ssTemplate.update("Home.thirdstepbyone", hdto);
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

	@Override
	public int modifyFirstHome(HomeDTO hdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Home.firststeptomodify", hdto);
	}

	@Override
	public int insertbed(BedDTO bdto) {
		// TODO Auto-generated method stub
		return ssTemplate.insert("Bed.insertbed", bdto);
	}
	
	@Override
	public int updatebed(BedDTO bdto) {
		// TODO Auto-generated method stub
		return ssTemplate.update("Bed.updatebed", bdto);
	}
	@Override
	public int getPaymentCount(int home_seq) {
		String sql = "select count(*) from payment where home_seq = ?";
		return jdbcTemplate.queryForObject(sql, Integer.class, home_seq);
	}

	@Override
	public BedDTO selectbed(int homeseq) {
		// TODO Auto-generated method stub
		return ssTemplate.selectOne("Bed.selectbed", homeseq);
	}

	@Override
	public int deletebed(int homeseq) {
		// TODO Auto-generated method stub
		return ssTemplate.delete("Bed.deletebed", homeseq);
	}
}
