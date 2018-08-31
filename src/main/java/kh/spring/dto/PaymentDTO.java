package kh.spring.dto;

public class PaymentDTO {
	private int payment_seq;
	private int home_seq;
	private String member_email;
	private int reservation_seq;
	private String checkIn;
	private String checkOut;
	private String payment_amount;
	private String payment_state;
	private String payment_date;
	
	
	public PaymentDTO() {
		
	}

	public PaymentDTO(int payment_seq, int home_seq, String member_email, int reservation_seq, String checkIn,
			String checkOut, String payment_amount, String payment_state, String payment_date) {
		super();
		this.payment_seq = payment_seq;
		this.home_seq = home_seq;
		this.member_email = member_email;
		this.reservation_seq = reservation_seq;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.payment_amount = payment_amount;
		this.payment_state = payment_state;
		this.payment_date = payment_date;
	}

	public int getPayment_seq() {
		return payment_seq;
	}


	public void setPayment_seq(int payment_seq) {
		this.payment_seq = payment_seq;
	}


	public int getHome_seq() {
		return home_seq;
	}


	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}


	public String getMember_email() {
		return member_email;
	}


	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}


	public int getReservation_seq() {
		return reservation_seq;
	}


	public void setReservation_seq(int reservation_seq) {
		this.reservation_seq = reservation_seq;
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


	public String getPayment_amount() {
		return payment_amount;
	}


	public void setPayment_amount(String payment_amount) {
		this.payment_amount = payment_amount;
	}


	public String getPayment_state() {
		return payment_state;
	}


	public void setPayment_state(String payment_state) {
		this.payment_state = payment_state;
	}


	public String getPayment_date() {
		return payment_date;
	}


	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	
	
}
