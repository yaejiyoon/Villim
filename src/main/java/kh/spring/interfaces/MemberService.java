package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ProfileHomePicDTO;
import kh.spring.dto.ReservationDTO;

public interface MemberService {
	public MemberDTO printProfile(String userId);

	public String editProfile(MemberDTO dto);

	public int editPhoto(String systemName, String userId);
	
	 public MemberDTO getPhoto(String userId);
	 
	 public int countHouse(String userId);
	 
	 public List<ProfileHomePicDTO> getHouse(String userId);

	 public List<ReservationDTO> getInfo(String userId);
	 
	 public HomePicDTO getHomePhoto(int home_seq);
	 
	 public HomeDTO getMemberEmail(int home_seq);
	 
	
}
