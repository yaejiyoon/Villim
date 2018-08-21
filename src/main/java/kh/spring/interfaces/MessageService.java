package kh.spring.interfaces;

import java.util.List;
import java.util.Map;

import kh.spring.dto.GuestMsgDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;

public interface MessageService {
	public int countReview(int home_seq);

	public int messageInsert(MessageDTO dto);
	
	public HomeDTO getHomeInfo(int home_seq);
	
	public MessageRoomDTO messageRoomSeqExist(MessageRoomDTO dto);
	
	public int getRoomSeq();
	
	public int messageRoomInsert(MessageRoomDTO roomdto);
	
	public List<GuestMsgDTO> guestMessageMain(String userId);
	
	public int guestMsgAllCount(String userId);
	
	public List<MemberDTO> memberInfo(List<String> hostId);
	
	public MessageRoomDTO msgRoomInfo(int message_room_seq);
	
	public List<MessageDTO> getMessage(int message_room_seq);
	
	public MessageDTO getOneMessage(int message_seq);
	
	public int getMessageSeq();
	
	public List<GuestMsgDTO> hostMessageMain(String userId);
	
	public int hostMsgAllCount(String userId);
	
	public List<HomeDTO> getHomeNames(String userId);
}
