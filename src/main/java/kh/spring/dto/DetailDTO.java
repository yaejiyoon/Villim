package kh.spring.dto;

public class DetailDTO {
	String checkIn;
	String checkOut;
	String message_content;

	public DetailDTO(String checkIn, String checkOut, String message_content) {
		super();
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.message_content = message_content;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

}
