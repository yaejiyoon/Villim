package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dto.AdminChartDTO;
import kh.spring.dto.AdminDTO;
import kh.spring.dto.ReportDTO;
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

	@Override
	public List<AdminChartDTO> getPaymentChart(AdminChartDTO chartDto) {
		
		return dao.getPaymentChart(chartDto);
	}

	@Override
	public String isAdminNum(String adminNum, String adminPw) {
		String result1 = dao.isAdminNum(adminNum, adminPw);
		
		if(result1.equals("exist")) {
			int result = dao.adminSignup(adminNum, adminPw);
			if(result > 0) {
				System.out.println("service 부분: 가입 성공");
				return "success";
			}else {
				System.out.println("service 부분: 가입 실패");
				return "fail";
			}
		}else {
			System.out.println("없는 사원입니다.");
			return result1;
		}
		
	}

	@Override
	public int adminSignup(String adminNum, String adminPw) {
		
		return 0;
	}

	@Override
	public String isManager(String adminNumber, String adminPassword1) {
		
		return dao.isManager(adminNumber, adminPassword1);
	}

	@Override
	public List<ReportDTO> getReportData() {
		
		return dao.getReportData();
	}



}
