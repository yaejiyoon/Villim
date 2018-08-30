package kh.spring.dto;

public class AdminDTO {

	private String reservation_seq;
	private String r_member_email;
	private String r_member_name;
	private String h_member_email;
	private String h_member_name;
	private String check_in;
	private String check_out;
	private String payment_amount;
	private String payment_date;
	private String home_state;

	public AdminDTO() {

	}

	public AdminDTO(String reservation_seq, String r_member_email, String r_member_name, String h_member_email,
			String h_member_name, String check_in, String check_out, String payment_amount, String payment_date,
			String home_state) {
		super();
		this.reservation_seq = reservation_seq;
		this.r_member_email = r_member_email;
		this.r_member_name = r_member_name;
		this.h_member_email = h_member_email;
		this.h_member_name = h_member_name;
		this.check_in = check_in;
		this.check_out = check_out;
		this.payment_amount = payment_amount;
		this.payment_date = payment_date;
		this.home_state = home_state;
	}

	public String getReservation_seq() {
		return reservation_seq;
	}

	public void setReservation_seq(String reservation_seq) {
		this.reservation_seq = reservation_seq;
	}

	public String getR_member_email() {
		return r_member_email;
	}

	public void setR_member_email(String r_member_email) {
		this.r_member_email = r_member_email;
	}

	public String getR_member_name() {
		return r_member_name;
	}

	public void setR_member_name(String r_member_name) {
		this.r_member_name = r_member_name;
	}

	public String getH_member_email() {
		return h_member_email;
	}

	public void setH_member_email(String h_member_email) {
		this.h_member_email = h_member_email;
	}

	public String getH_member_name() {
		return h_member_name;
	}

	public void setH_member_name(String h_member_name) {
		this.h_member_name = h_member_name;
	}

	public String getCheck_in() {
		return check_in;
	}

	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}

	public String getCheck_out() {
		return check_out;
	}

	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}

	public String getPayment_amount() {
		return payment_amount;
	}

	public void setPayment_amount(String payment_amount) {
		this.payment_amount = payment_amount;
	}

	public String getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}

	public String getHome_state() {
		return home_state;
	}

	public void setHome_state(String home_state) {
		this.home_state = home_state;
	}

}
