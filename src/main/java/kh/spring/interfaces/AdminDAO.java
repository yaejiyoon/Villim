package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.AdminChartDTO;
import kh.spring.dto.AdminDTO;

public interface AdminDAO {
	
	public List<AdminDTO> getAllPaymentData();
	public int updateHomeStateHome(List<String> arr);
	public int updateHomeStatePayment(List<String> arr);
	public List<AdminChartDTO> getPaymentChart(AdminChartDTO chartDto);
	public String isAdminNum(String adminNum, String adminPw);
	public int adminSignup(String adminNum, String adminPw);
	public String isManager(String adminNumber, String adminPassword);

}
