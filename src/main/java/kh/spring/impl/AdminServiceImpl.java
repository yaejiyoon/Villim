package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dto.AdminDTO;
import kh.spring.interfaces.AdminDAO;
import kh.spring.interfaces.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDAO dao;

	@Override
	public List<AdminDTO> getAllPaymentData() {

		
		return dao.getAllPaymentData();
	}

	@Override
	public int updateHomeStateHome(List<String> arr) {
		
		return dao.updateHomeStateHome(arr);
	}

	@Override
	public int updateHomeStatePayment(List<String> arr) {
		
		return dao.updateHomeStatePayment(arr);
	}

}
