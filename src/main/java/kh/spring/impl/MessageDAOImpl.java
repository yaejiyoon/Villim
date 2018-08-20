package kh.spring.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.GuestMsgDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;
import kh.spring.interfaces.MessageDAO;

@Component
public class MessageDAOImpl implements MessageDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private SqlSession template;

	@Override
	public int countReview(int home_seq) {
		return template.selectOne("Message.countReview",home_seq);
	}

	@Override
	public int messageInsert(MessageDTO dto) {
		return template.insert("Message.messageInsert",dto);
	}

	@Override
	public HomeDTO getHomeInfo(int home_seq) {
		return template.selectOne("Message.getHomeInfo", home_seq);
	}

	@Override
	public MessageRoomDTO messageRoomSeqExist(MessageRoomDTO dto) {
		return template.selectOne("Message.messageRoomSeqExist",dto);
	}
	
	@Override
	public int getRoomSeq() {
		return template.selectOne("Message.getRoomSeq");
	}



	@Override
	public int messageRoomInsert(MessageRoomDTO roomdto) {
		return template.insert("Message.messageRoomInsert",roomdto);
	}

	@Override
	public List<GuestMsgDTO> guestMessageMain(String userId) {
		return template.selectList("Message.guestMessageMain", userId);
	}

	@Override
	public int guestMsgAllCount(String userId) {
		return template.selectOne("Message.guestMsgAllCount", userId);
	}

	@Override
	public List<MemberDTO> memberInfo(List<String> hostId) {
		return template.selectList("Message.memberInfo",hostId);
	}

	@Override
	public MessageRoomDTO msgRoomInfo(int message_room_seq) {
		return template.selectOne("Message.msgRoomInfo", message_room_seq);
	}

	


	
}
