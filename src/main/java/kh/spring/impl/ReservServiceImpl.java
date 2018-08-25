package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReservDAO;
import kh.spring.interfaces.ReservService;

@Component
public class ReservServiceImpl implements ReservService{

	@Autowired
	private ReservDAO reservDAO;
	
	@Override
	public int insertData(ReservationDTO dto) {
		return reservDAO.insertData(dto);
	}

	@Override
	public ReservationDTO getReservationData(int seq) {
		return reservDAO.getReservationData(seq);
	}

}
