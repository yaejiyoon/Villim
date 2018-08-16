package kh.spring.dto;

public class MessageDTO {
	int message_seq;
	String fromID;
	String toID;
	String message_content;
	String message_time;
	int message_read;

	public MessageDTO() {
	}

	public MessageDTO(int message_seq, String fromID, String toID, String message_content, String message_time,
			int message_read) {
		super();
		this.message_seq = message_seq;
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
	};

}
