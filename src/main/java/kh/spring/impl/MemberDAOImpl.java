package kh.spring.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ProfileHomePicDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.dto.ReviewDTO;
import kh.spring.interfaces.MemberDAO;

@Component
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private SqlSession template;

	@Override
	public int signup(MemberDTO dto) {

		String sql = "insert into member values(member_seq.nextval,?,?,?,?,?,'N',sysdate,'null',?)";
		return jdbcTemplate.update(sql, dto.getMember_email(), dto.getMember_name(), dto.getMember_pw(),
				dto.getMember_birth(), dto.getMember_picture(), dto.getMember_phone());
	}

	@Override
	public boolean isMember(MemberDTO dto) {
		String sql = "select count(*) from member where member_email=? and member_pw=?";
		boolean result = false;
		int count = jdbcTemplate.queryForObject(sql, new Object[] { dto.getMember_email(), dto.getMember_pw() },
				Integer.class);
		if (count > 0) {
			return true;
		}
		return result;
	}

	@Override
	public MemberDTO printProfile(String userId) {
		return template.selectOne("Member.printProfile", userId);
	}

	@Override
	public String editProfile(MemberDTO dto) {
		template.update("Member.editProfile", dto);
		return dto.getMember_email();
	}

	@Override
	public int editPhoto(String systemName, String userId) {
		String sql = "update member set member_picture=? where member_email=?";
		return jdbcTemplate.update(sql, systemName, userId);
	}

	@Override
	public MemberDTO getPhoto(String userId) {
		return template.selectOne("Member.getPhoto", userId);
	}

	@Override
	public int countHouse(String userId) {
		return template.selectOne("Member.countHouse", userId);
	}

	@Override
	public List<ProfileHomePicDTO> getHouse(String userId) {
		return template.selectList("Member.getHouse", userId);
	}

	@Override
	public List<ReservationDTO> getInfo(String userId) {
		return template.selectList("Member.getReviewInfo",userId);
	}

	@Override
	public HomePicDTO getHomePhoto(int home_seq) {
		return template.selectOne("Member.getHomePhoto", home_seq);
	}

	@Override
	public HomeDTO getMemberEmail(int home_seq) {
		return template.selectOne("Member.getMemberEmail", home_seq);
	}

	@Override
	public int insertGuestReview(GuestReviewDTO dto) {
		return template.insert("Member.insertGuestReview",dto);
	}

	@Override
	public int updateReservation(int home_seq, String member_email) {
		String sql="update reservation set guest_review='Y' where member_email=?  and home_seq=?";
		return jdbcTemplate.update(sql,member_email,home_seq);
	}

	@Override
	public List<ReviewDTO> getGuestReview(String member_email) {
		return template.selectList("Member.getGuestReview",member_email);
	}

}
