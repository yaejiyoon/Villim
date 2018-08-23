package kh.spring.dto;

public class ReservationDTO {
	int reservation_seq;
	String member_email;
	String reserv_checkin;
	String reserv_checkout;
	int population;
	String nightsAmount;
	String cleaningFee;
	String serviceFee;
	String totalAmount;
	int home_seq;
	String home_name;
	String guset_review;
	int reserv_state;
	String host_email;
	String reserv_date;
	String member_picture;
	private String home_addr1;
	private String home_addr2;
	private String home_addr3;
	private String home_addr4;
	private String home_zipcode;
	private String member_name;
	private int home_people;
	private String host_name;

	public ReservationDTO() {
		super();
	}

	public ReservationDTO(int reservation_seq, String member_email, String reserv_checkin, String reserv_checkout,
			int population, String nightsAmount, String cleaningFee, String serviceFee, String totalAmount,
			int home_seq, String home_name, String guset_review, int reserv_state) {
		super();
		this.reservation_seq = reservation_seq;
		this.member_email = member_email;
		this.reserv_checkin = reserv_checkin;
		this.reserv_checkout = reserv_checkout;
		this.population = population;
		this.nightsAmount = nightsAmount;
		this.cleaningFee = cleaningFee;
		this.serviceFee = serviceFee;
		this.totalAmount = totalAmount;
		this.home_seq = home_seq;
		this.home_name = home_name;
		this.guset_review = guset_review;
		this.reserv_state = reserv_state;
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

	public String getNightsAmount() {
		return nightsAmount;
	}

	public void setNightsAmount(String nightsAmount) {
		this.nightsAmount = nightsAmount;
	}

	public String getCleaningFee() {
		return cleaningFee;
	}

	public void setCleaningFee(String cleaningFee) {
		this.cleaningFee = cleaningFee;
	}

	public String getServiceFee() {
		return serviceFee;
	}

	public void setServiceFee(String serviceFee) {
		this.serviceFee = serviceFee;
	}

	public String getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
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
	}

	public int getReserv_state() {
		return reserv_state;
	}

	public void setReserv_state(int reserv_state) {
		this.reserv_state = reserv_state;
	}

	public String getHost_email() {
		return host_email;
	}

	public void setHost_email(String host_email) {
		this.host_email = host_email;
	}

	public String getMember_picture() {
		return member_picture;
	}

	public void setMember_picture(String member_picture) {
		this.member_picture = member_picture;
	}

	public String getHome_addr1() {
		return home_addr1;
	}

	public void setHome_addr1(String home_addr1) {
		this.home_addr1 = home_addr1;
	}

	public String getHome_addr2() {
		return home_addr2;
	}

	public void setHome_addr2(String home_addr2) {
		this.home_addr2 = home_addr2;
	}

	public String getHome_addr3() {
		return home_addr3;
	}

	public void setHome_addr3(String home_addr3) {
		this.home_addr3 = home_addr3;
	}

	public String getHome_addr4() {
		return home_addr4;
	}

	public void setHome_addr4(String home_addr4) {
		this.home_addr4 = home_addr4;
	}

	public String getHome_zipcode() {
		return home_zipcode;
	}

	public void setHome_zipcode(String home_zipcode) {
		this.home_zipcode = home_zipcode;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getReserv_date() {
		return reserv_date;
	}

	public void setReserv_date(String reserv_date) {
		this.reserv_date = reserv_date;
	}

	public int getHome_people() {
		return home_people;
	}

	public void setHome_people(int home_people) {
		this.home_people = home_people;
	}

	public String getHost_name() {
		return host_name;
	}

	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}

}
