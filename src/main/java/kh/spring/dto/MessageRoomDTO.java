package kh.spring.dto;

public class MessageRoomDTO {
	int message_room_seq;
	int home_seq;
	String host_email;
	String guest_email;
	String checkIn;
	String checkOut;
	int totalNumber;

	public MessageRoomDTO() {
	}

	public MessageRoomDTO(int message_room_seq, int home_seq, String host_email, String guest_email, String checkIn,
			String checkOut, int totalNumber) {
		super();
		this.message_room_seq = message_room_seq;
		this.home_seq = home_seq;
		this.host_email = host_email;
		this.guest_email = guest_email;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.totalNumber = totalNumber;
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

	public String getHost_email() {
		return host_email;
	}

	public void setHost_email(String host_email) {
		this.host_email = host_email;
	}

	public String getGuest_email() {
		return guest_email;
	}

	public void setGuest_email(String guest_email) {
		this.guest_email = guest_email;
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

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

}
