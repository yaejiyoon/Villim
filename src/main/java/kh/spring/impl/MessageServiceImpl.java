package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;
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

	@Override
	public int messageInsert(MessageDTO dto) {
		return dao.messageInsert(dto);
	}

	@Override
	public HomeDTO getHomeInfo(int home_seq) {
		return dao.getHomeInfo(home_seq);
	}

	@Override
	public int getRoomSeq() {
		return dao.getRoomSeq();
	}

	@Override
	public MessageRoomDTO messageRoomSeqExist(MessageRoomDTO dto) {
		return dao.messageRoomSeqExist(dto);
	}

	@Override
	public int messageRoomInsert(MessageRoomDTO roomdto) {
		return dao.messageRoomInsert(roomdto);
	}

	
	
	
}
