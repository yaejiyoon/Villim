package kh.spring.interfaces;

import kh.spring.dto.ReservationDTO;

public interface ReservService {
	public int insertData(ReservationDTO dto);
	public ReservationDTO getReservationData(int seq);
	public int updateReservState(int seq, int state);
}
