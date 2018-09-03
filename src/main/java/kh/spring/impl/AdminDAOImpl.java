package kh.spring.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import kh.spring.dto.AdminChartDTO;
import kh.spring.dto.AdminDTO;
import kh.spring.dto.ReportDTO;
import kh.spring.interfaces.AdminDAO;

@Component
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<AdminDTO> getAllPaymentData() {

		String sql = "select p.RESERVATION_SEQ as RESERVATION_SEQ, p.MEMBER_EMAIL as R_MEMBER_EMAIL,"
				+ "m.MEMBER_NAME as R_MEMBER_NAME, h.MEMBER_EMAIL as H_MEMBER_EMAIL," 
				+ "s.MEMBER_NAME as H_MEMBER_NAME, p.CHECKIN as CHECKIN,"
				+ "p.CHECKOUT as CHECKOUT, p.PAYMENT_AMOUNT as PAYMENT_AMOUNT,"
				+ "p.PAYMENT_DATE as PAYMENT_DATE, p.PAYMENT_STATE as PAYMENT_STATE "
				+ "from payment p, home h, member m, member s " 
				+ "where p.HOME_SEQ = h.HOME_SEQ and p.MEMBER_EMAIL = m.MEMBER_EMAIL and h.MEMBER_EMAIL = s.MEMBER_EMAIL";
		
		List<AdminDTO> result = jdbcTemplate.query(sql, new RowMapper <AdminDTO>() {
			@Override
			public AdminDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				AdminDTO adminPayDto = new AdminDTO();
				adminPayDto.setReservation_seq(rs.getInt("RESERVATION_SEQ") + "");
				adminPayDto.setR_member_email(rs.getString("R_MEMBER_EMAIL"));
				adminPayDto.setR_member_name(rs.getString("R_MEMBER_NAME"));
				adminPayDto.setH_member_email(rs.getString("H_MEMBER_EMAIL"));
				adminPayDto.setH_member_name(rs.getString("H_MEMBER_NAME"));
				adminPayDto.setCheck_in(rs.getString("CHECKIN"));
				adminPayDto.setCheck_out(rs.getString("CHECKOUT"));
				adminPayDto.setPayment_amount(rs.getString("PAYMENT_AMOUNT"));
				adminPayDto.setPayment_date(rs.getString("PAYMENT_DATE"));
				adminPayDto.setPayment_state(rs.getString("PAYMENT_STATE"));
				return adminPayDto;
			}
		
		});
		
		for(int j=0; j<result.size(); j++) {
			System.out.println(result.get(j).getReservation_seq() + "결제  result");
		}
		
		return result;
	}

	@Override
	public int updateHomeStateHome(List<String> arr) {
		String sql = "update home set home_state=? where reservation_seq=?";
		System.out.println(arr + "daoImpl");
		int result = 0 ;
		int count = 0;
		for(int i=0; i<arr.size(); i++) {
		String seq = arr.get(i).split(":")[0];
		String val = arr.get(i).split(":")[1];
		
		result = jdbcTemplate.update(sql, val, seq);
		
		if(result>0) {
			
			System.out.println("성공");
			count++;
			
		}else {
			System.out.println("실패");
		
		}
		}
		return 0;
		
	}

	@Override
	public int updateHomeStatePayment(List<String> arr) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<AdminChartDTO> getPaymentChart(AdminChartDTO chartDto) {
		String sql = "select count(*) reservation_count, "
				+ "sum(PAYMENT_AMOUNT) payment_sum, "
				+ "extract(month from to_date(payment_date)) payment_month "
				+ "from payment "
				+ "where extract(year from to_date(payment_date)) = ? group by extract(month from to_date(payment_date))"
				+ " order by payment_month";
		List<AdminChartDTO> result = jdbcTemplate.query(sql, new RowMapper <AdminChartDTO>() {
			@Override
			public AdminChartDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				AdminChartDTO adminChartDto = new AdminChartDTO();
				adminChartDto.setReservation_count(rs.getString("reservation_count"));
				adminChartDto.setPayment_month(rs.getString("payment_month"));
				adminChartDto.setPayment_sum(rs.getString("payment_sum"));
				return adminChartDto;
			}
		
		}, chartDto.getPayment_year());
		
		for(int i=0; i<result.size(); i++) {
			System.out.println(result.get(i).getPayment_month());
		}
		return result;
	}

	@Override
	public String isAdminNum(String adminNum, String adminPw) {
		String sql = "select admin_num from admin_number where admin_num=?";
		System.out.println(adminNum + ":" + adminPw); 
		List<String> list = new ArrayList<>();
		List<String> result = jdbcTemplate.query(sql, new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				list.add(rs.getString("admin_num"));

				return list;
			}

		},adminNum);
		System.out.println("asdasdasdasdwqeqwewqe");
		if(result.size() == 0) {
			System.out.println("사원 번호 존재하지 않음");
			return "notexist";
		}else {
			System.out.println("사원 번호 존재");
			return "exist";
		}
	}

	@Override
	public int adminSignup(String adminNum, String adminPw) {
		String sql = "insert into admin_member values(admin_member_seq.nextval, ?, ?)";
		int result = jdbcTemplate.update(sql, adminNum, adminPw);
		
		if(result>0) {
			System.out.println("관리자 계정 회원가입 성공");
			return result;
		}else {
			System.out.println("관리자 계정 회원가입 실패");
			return result;
		}
		
	}

	@Override
	public String isManager(String adminNumber, String adminPassword) {
		
		String sql = "select m.ADMIN_NUMBER as admin_number, n.admin_name as admin_name from admin_number n, admin_member m"
				+ " where n.ADMIN_NUM = m.ADMIN_NUMBER and m.admin_number = ? and m.admin_pw = ?";
		List<String> list = new ArrayList<>();
		List<String> result = jdbcTemplate.query(sql, new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				list.add(rs.getString("admin_name") + ":" + rs.getString("admin_number"));
			
				return list;
			}

		},adminNumber, adminPassword);
		
		if(result.size() == 0) {
			System.out.println("관리자가 아닙니다.");
			return "notmanager";
		}else {
			System.out.println("관리자 입니다.");
			return list.get(0);
		}
	
	}

	@Override
	public List<ReportDTO> getReportData() {
		
		String sql = "select member_email, member_name, reported_email,"
				+ "reported_name, report_reason, report_seq, report_state,"
				+ "to_char(to_date(report_date), 'YYYY-MM-DD') as report_date"
				+ " from report where report_state = 0";
		
		List<ReportDTO> result = jdbcTemplate.query(sql, new RowMapper <ReportDTO>() {
			@Override
			public ReportDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				ReportDTO reportDto = new ReportDTO();
				reportDto.setMember_email(rs.getString("member_email"));
				reportDto.setMember_name(rs.getString("member_name"));
				reportDto.setReported_email(rs.getString("reported_email"));
				reportDto.setReported_name(rs.getString("reported_name"));
				reportDto.setReport_seq(rs.getInt("report_seq"));
				reportDto.setReport_reason(rs.getString("report_reason"));
				reportDto.setReport_state(rs.getString("report_state"));
				reportDto.setReport_date(rs.getString("report_date"));
				return reportDto;
			}
		
		});
		return result;
	}



}
