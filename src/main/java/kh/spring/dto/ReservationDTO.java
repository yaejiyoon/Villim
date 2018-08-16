package kh.spring.dto;

public class ReservationDTO {
	int reservation_seq;
	String member_email;
	String reserv_checkin;
	String reserv_checkout;
	int population;
	String amount;
	int home_seq;
	String home_name;
	String guset_review;

	public ReservationDTO(int reservation_seq, String member_email, String reserv_checkin, String reserv_checkout,
			int population, String amount, int home_seq, String home_name, String guset_review) {
		super();
		this.reservation_seq = reservation_seq;
		this.member_email = member_email;
		this.reserv_checkin = reserv_checkin;
		this.reserv_checkout = reserv_checkout;
		this.population = population;
		this.amount = amount;
		this.home_seq = home_seq;
		this.home_name = home_name;
		this.guset_review = guset_review;
	}

	public ReservationDTO() {
	}

	public int getReservation_seq() {
		return reservation_seq;
	}

	public void setReservation_seq(int reservation_seq) {
		this.reservation_seq = reservation_seq;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getReserv_checkin() {
		return reserv_checkin;
	}

	public void setReserv_checkin(String reserv_checkin) {
		this.reserv_checkin = reserv_checkin;
	}

	public String getReserv_checkout() {
		return reserv_checkout;
	}

	public void setReserv_checkout(String reserv_checkout) {
		this.reserv_checkout = reserv_checkout;
	}

	public int getPopulation() {
		return population;
	}

	public void setPopulation(int population) {
		this.population = population;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}

	public String getHome_name() {
		return home_name;
	}

	public void setHome_name(String home_name) {
		this.home_name = home_name;
	}

	public String getGuset_review() {
		return guset_review;
	}

	public void setGuset_review(String guset_review) {
		this.guset_review = guset_review;
	};

}
