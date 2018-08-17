package kh.spring.interfaces;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.dto.MessageRoomDTO;

public interface MessageDAO {
	public int countReview(int home_seq);

	public int messageInsert(MessageDTO dto);

	public HomeDTO getHomeInfo(int home_seq);

	public MessageRoomDTO messageRoomSeqExist(MessageRoomDTO dto);

	public int getRoomSeq();

	public int messageRoomInsert(MessageRoomDTO roomdto);
}
