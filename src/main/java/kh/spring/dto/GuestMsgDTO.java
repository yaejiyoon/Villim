package kh.spring.dto;

public class GuestMsgDTO {
	int message_room_seq;
	int message_seq;
	int home_seq;
	String guest_email;
	String host_email;
	String checkIn;
	String checkOut;
	String totalNumber;
	String message_content;
	String message_time;
	int message_read;
    String fromID;
    String toID;
	
	public GuestMsgDTO() {
	}



	public GuestMsgDTO(int message_room_seq, int message_seq, int home_seq, String guest_email, String host_email,
			String checkIn, String checkOut, String totalNumber, String message_content, String message_time,
			int message_read, String fromID, String toID) {
		super();
		this.message_room_seq = message_room_seq;
		this.message_seq = message_seq;
		this.home_seq = home_seq;
		this.guest_email = guest_email;
		this.host_email = host_email;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.totalNumber = totalNumber;
		this.message_content = message_content;
		this.message_time = message_time;
		this.message_read = message_read;
		this.fromID = fromID;
		this.toID = toID;
	}



	public int getMessage_room_seq() {
		return message_room_seq;
	}



	public void setMessage_room_seq(int message_room_seq) {
		this.message_room_seq = message_room_seq;
	}



	public int getMessage_seq() {
		return message_seq;
	}



	public void setMessage_seq(int message_seq) {
		this.message_seq = message_seq;
	}



	public int getHome_seq() {
		return home_seq;
	}



	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}



	public String getGuest_email() {
		return guest_email;
	}



	public void setGuest_email(String guest_email) {
		this.guest_email = guest_email;
	}



	public String getHost_email() {
		return host_email;
	}



	public void setHost_email(String host_email) {
		this.host_email = host_email;
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



	public String getTotalNumber() {
		return totalNumber;
	}



	public void setTotalNumber(String totalNumber) {
		this.totalNumber = totalNumber;
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



	

}
