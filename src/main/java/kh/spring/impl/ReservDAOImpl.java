package kh.spring.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReservDAO;

@Component
public class ReservDAOImpl implements ReservDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int insertData(ReservationDTO dto) {
		String sql = "insert into reservation values(reservation_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,0,?,sysdate,to_char(sysdate+1, 'YYYY/MM/DD HH24:MI:SS'))";
		return jdbcTemplate.update(sql,dto.getMember_email(),dto.getReserv_checkin(),
				dto.getReserv_checkout(),dto.getPopulation(),dto.getNightsAmount(),dto.getCleaningFee()
			,dto.getServiceFee(),dto.getTotalAmount(),dto.getHome_seq(),dto.getHome_name(),dto.getGuset_review(), dto.getHost_email());
	}

	@Override
	public ReservationDTO getReservationData(int seq) {
		return sqlSessionTemplate.selectOne("Reservation.getReservationData",seq);
	}

	@Override
	public int updateReservState(int seq, int state) {
		String sql = "update reservation set RESERV_STATE=? where reservation_seq=?";
		return jdbcTemplate.update(sql,state,seq);
	}

}
