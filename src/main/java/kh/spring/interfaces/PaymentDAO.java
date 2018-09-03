package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.PaymentDTO;

public interface PaymentDAO {
	public int insertDate(PaymentDTO dto);
	
	public PaymentDTO getPaymentData(int reservation_seq);
}
