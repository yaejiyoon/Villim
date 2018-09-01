package kh.spring.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import kh.spring.dto.AdminChartDTO;
import kh.spring.dto.AdminDTO;
import kh.spring.dto.MemberDTO;
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

}
