package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.AdminChartDTO;
import kh.spring.dto.PaymentDTO;

public interface PaymentService {
	public int insertDate(PaymentDTO dto);
	
	public PaymentDTO getPaymentData(int reservation_seq);
	
	public int updatePaymentState(int seq, int state);
}
