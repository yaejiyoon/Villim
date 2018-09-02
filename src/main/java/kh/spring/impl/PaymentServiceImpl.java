package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.PaymentDTO;
import kh.spring.interfaces.PaymentDAO;
import kh.spring.interfaces.PaymentService;

@Component
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDAO paymentDAO;
	
	@Override
	public int insertDate(PaymentDTO dto) {
		return paymentDAO.insertDate(dto);
	}

	@Override
	public PaymentDTO getPaymentData(int reservation_seq) {
		return paymentDAO.getPaymentData(reservation_seq);
	}

}
