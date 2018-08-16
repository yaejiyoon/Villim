package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.ReservationDAO;
import kh.spring.interfaces.ReservationService;


@Component
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDAO reservDAO;

	@Override
	public int insertData(ReservationDTO dto) {
		return reservDAO.insertData(dto);
	}
	
	
	
}
