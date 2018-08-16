package kh.spring.impl;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReservationDAO;

@Component
public class ReservationDAOImpl implements ReservationDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSessionTemplate ssTemplate;

	@Override
	public int insertData(ReservationDTO dto) {
//		String sql = "insert into reservation values(reservation_seq.nextval,?,?,?,?,?,?,?,?)";
//		return jdbcTemplate.update(sql,dto.getMember_email(),dto.getReserv_checkin(),dto.getReserv_checkout()
//				,dto.getPopulation(),dto.getAmount(),dto.getHome_seq(),dto.getHome_name(),dto.getGuset_review());
	
		return ssTemplate.insert("Reservation.insertData",dto);
		
	}
	
	
}
