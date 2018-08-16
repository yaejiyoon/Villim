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
		String sql = "insert into reservation values(reservation_seq.nextval,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,dto.getMember_email(),dto.getReserv_checkin(),
				dto.getReserv_checkout(),dto.getPopulation(),dto.getAmount(),dto.getHome_name(),dto.getHome_seq(),dto.getGuset_review());
	}

}
