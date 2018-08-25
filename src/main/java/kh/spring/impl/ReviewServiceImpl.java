package kh.spring.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.interfaces.ReviewDAO;
import kh.spring.interfaces.ReviewService;

@Component
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public List<GuestReviewDTO> getAllGuestReviewData(Map<String, Integer> map) {
		return reviewDAO.getAllGuestReviewData(map);
	}

	@Override
	public List<HostReviewDTO> getAllHostReviewData(int home_seq) {
		return reviewDAO.getAllHostReviewData(home_seq);
	}

	@Override
	public String getReviewPageNavi(int currentPageNo,int home_seq) {
		return reviewDAO.getReviewPageNavi(currentPageNo,home_seq);
	}

	@Override
	public int countTotalNavi() {
		return reviewDAO.countTotalNavi();
	}

	
	
	

}
