package kh.spring.dto;

public class MessageDTO {
	int message_seq;
	int message_room_seq;
	int home_seq;
	String fromID;
	String toID;
	String message_content;
	String message_time;
	int message_read;
	String home_name;
	String member_picture;
	String member_name;

	public MessageDTO() {
	}

	public MessageDTO(int message_seq, int message_room_seq, int home_seq, String fromID, String toID,
			String message_content, String message_time, int message_read) {
		super();
		this.message_seq = message_seq;
		this.message_room_seq = message_room_seq;
		this.home_seq = home_seq;
		this.fromID = fromID;
		this.toID = toID;
		this.message_content = message_content;
		this.message_time = message_time;
		this.message_read = message_read;
	}

	public int getMessage_seq() {
		return message_seq;
	}

	public void setMessage_seq(int message_seq) {
		this.message_seq = message_seq;
	}

	public int getMessage_room_seq() {
		return message_room_seq;
	}

	public void setMessage_room_seq(int message_room_seq) {
		this.message_room_seq = message_room_seq;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}

	public String getFromID() {
		return fromID;
	}

	public void setFromID(String fromID) {
		this.fromID = fromID;
	}

	public String getToID() {
		return toID;
	}

	public void setToID(String toID) {
		this.toID = toID;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

	public String getMessage_time() {
		return message_time;
	}

	public void setMessage_time(String message_time) {
		this.message_time = message_time;
	}

	public int getMessage_read() {
		return message_read;
	}

	public void setMessage_read(int message_read) {
		this.message_read = message_read;
	}

	public String getHome_name() {
		return home_name;
	}

	public void setHome_name(String home_name) {
		this.home_name = home_name;
	}

	public String getMember_picture() {
		return member_picture;
	}

	public void setMember_picture(String member_picture) {
		this.member_picture = member_picture;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	
}
