package kh.spring.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.PaymentDTO;
import kh.spring.interfaces.PaymentDAO;

@Component
public class PaymentDAOImpl implements PaymentDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int insertDate(PaymentDTO dto) {
		String sql = "insert into payment values(payment_seq.nextval,?,?,?,?,?,?,0,sysdate,?,?)";
		return jdbcTemplate.update(sql,dto.getHome_seq(),dto.getMember_email(),dto.getReservation_seq(),
				dto.getCheckIn(),dto.getCheckOut(),dto.getPayment_amount(),dto.getHost_email(),dto.getMerchant_uid());
	}

	@Override
	public PaymentDTO getPaymentData(int reservation_seq) {
		return sqlSessionTemplate.selectOne("Pay.getPaymentData",reservation_seq);
	}

}
