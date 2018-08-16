package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.interfaces.MessageDAO;
import kh.spring.interfaces.MessageService;

@Service
public class MessageServiceImpl implements MessageService{

	@Autowired
	MessageDAO dao;

	@Override
	public int countReview(int home_seq) {
		return dao.countReview(home_seq);
	}
	
	
}
