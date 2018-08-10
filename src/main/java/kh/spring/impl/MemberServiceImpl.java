package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.HomePicDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.ProfileHomePicDTO;
import kh.spring.dto.ReservationDTO;
import kh.spring.interfaces.MemberDAO;
import kh.spring.interfaces.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO dao;

	@Override
	public int signup(MemberDTO dto) {
		
		return dao.signup(dto);
	
	}

	@Override
	public boolean isMember(MemberDTO dto) {
		
		
		return dao.isMember(dto);
		
		
	}
	@Override
	public MemberDTO printProfile(String userId) {
		return dao.printProfile(userId);
	}


	@Override
	public String editProfile(MemberDTO dto) {
		 dao.editProfile(dto);
		return dto.getMember_email();
	}


	@Override
	public int editPhoto(String systemName, String userId) {
		return dao.editPhoto(systemName, userId);
	}


	@Override
	public MemberDTO getPhoto(String userId) {
		return dao.getPhoto(userId);
	}


	@Override
	public int countHouse(String userId) {
		return dao.countHouse(userId);
	}


	@Override
	public List<ProfileHomePicDTO> getHouse(String userId) {
		return dao.getHouse(userId);
	}


	@Override
	public List<ReservationDTO> getInfo(String userId) {
		return dao.getInfo(userId);
	}


	@Override
	public HomePicDTO getHomePhoto(int home_seq) {
		return dao.getHomePhoto(home_seq);
	}


	@Override
	public HomeDTO getMemberEmail(int home_seq) {
		return dao.getMemberEmail(home_seq);
	}

}

