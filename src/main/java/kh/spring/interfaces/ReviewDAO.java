package kh.spring.interfaces;

import java.util.List;
import java.util.Map;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HostReviewDTO;

public interface ReviewDAO {
	public List<GuestReviewDTO> getAllGuestReviewData(Map<String,Integer> map);
	
	public List<HostReviewDTO> getAllHostReviewData(int home_seq);
	
	public String getReviewPageNavi(int currentPageNo,int home_seq);
	
	public int countTotalNavi();
	
	public int totalReviewCount(int home_seq);
	
	public int starCount(int home_seq);
}
