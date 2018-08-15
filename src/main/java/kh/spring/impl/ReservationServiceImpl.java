package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.interfaces.ReservationDAO;

@Service
public class ReservationServiceImpl {
	
	@Autowired
	private ReservationDAO dao;
	
}
