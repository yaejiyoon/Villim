package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ProfileHomePicDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.dto.ReviewDTO;
import kh.spring.dto.Review_H_DTO;


public interface MemberDAO {
	
	public int signup(MemberDTO dto);
	
	public boolean isMember(MemberDTO dto);
	
	public MemberDTO printProfile(String userId);

	public String editProfile(MemberDTO dto);
	
    public int editPhoto(String systemName,String userId);
    
    public MemberDTO getPhoto(String userId);
    
    public int countHouse(String userId);
    
    public List<ProfileHomePicDTO> getHouse(String userId);
    
    public List<ReservationDTO> getInfo(String userId);
    
    public HomePicDTO getHomePhoto(int home_seq);
    
    public HomeDTO getMemberEmail(int home_seq);
    
    public int insertGuestReview(GuestReviewDTO dto);
    
    public int updateReservation(int home_seq,String member_email);
    
    public List<ReviewDTO> getGuestReview(String member_email);
    
    public List<Integer> getSeq(String userId);
    
    public List<Review_H_DTO> getHostReview(List<Integer> home_seq);
	
    public List<HostReviewDTO> getRealHostReview(List<Integer> g_review_seq);
    
    public int insertHostReview(HostReviewDTO dto);
}
