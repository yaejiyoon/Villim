package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReservDAO;

@Component
public class ReservDAOImpl implements ReservDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int insertData(ReservationDTO dto) {
		String sql = "insert into reservation values(reservation_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,0)";
		return jdbcTemplate.update(sql,dto.getMember_email(),dto.getReserv_checkin(),
				dto.getReserv_checkout(),dto.getPopulation(),dto.getNightsAmount(),dto.getCleaningFee()
			,dto.getServiceFee(),dto.getTotalAmount(),dto.getHome_seq(),dto.getHome_name(),dto.getGuset_review());
	}

}
