package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ProfileHomePicDTO;

public interface MemberDAO {
	public MemberDTO printProfile(String userId);

	public String editProfile(MemberDTO dto);
	
    public int editPhoto(String systemName,String userId);
    
    public MemberDTO getPhoto(String userId);
    
    public int countHouse(String userId);
    
    public List<ProfileHomePicDTO> getHouse(String userId);
    
   
}
