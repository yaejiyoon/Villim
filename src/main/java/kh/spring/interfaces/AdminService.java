package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.AdminDTO;

public interface AdminService {
	
	public List<AdminDTO> getAllPaymentData();
	public int updateHomeStateHome(List<String> arr);
	public int updateHomeStatePayment(List<String> arr);

}
