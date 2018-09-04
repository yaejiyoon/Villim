package kh.spring.interfaces;

import java.util.List;
import java.util.Map;

import kh.spring.dto.DetailDTO;
import kh.spring.dto.GuestMsgDTO;
import kh.spring.dto.HomeDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;
import kh.spring.dto.ReportDTO;
import kh.spring.dto.ReservationDTO;

public interface MessageService {
	public int countReview(int home_seq);

	public int messageInsert(MessageDTO dto);
	
	public HomeDTO getHomeInfo(int home_seq);
	
	public MessageRoomDTO messageRoomSeqExist(MessageRoomDTO dto);
	
	public int getRoomSeq();
	
	public int messageRoomInsert(MessageRoomDTO roomdto);
	
	public DetailDTO getMsgAfterSend(int message_seq);
	
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
	
	public List<ReservationDTO> reservCheck(ReservationDTO dto2);
	
	public int guestMsgUnreadCount(String userId);
	
	public List<GuestMsgDTO> guestUnreadMsg(String userId);
	
	public List<GuestMsgDTO> hostUnreadMsg(String userId);
	
	public int hostMsgUnreadCount(String userId);
	
	public int ReadUpdate(int message_seq,String member_email,String userId);
	
	public MessageDTO getMessageOne(int message_room_seq);
	
	public int reportGuest(ReportDTO dto);
}
