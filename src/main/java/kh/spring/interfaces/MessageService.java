package kh.spring.interfaces;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.MessageDTO;

public interface MessageService {
	public int countReview(int home_seq);

	public int messageInsert(MessageDTO dto);
	
	public HomeDTO getHomeInfo(int home_seq);
	
	/*public int messageRoomInsert();*/
}
