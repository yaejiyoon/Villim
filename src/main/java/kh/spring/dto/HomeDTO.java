package kh.spring.dto;

public class HomeDTO {
	private String member_email;
	private int home_seq;
	private String home_name;
	private String home_contents;
	private String home_type;
	private int home_people;
	private String home_bedroom;
	private String home_bed;
	private String home_nation;
	private String home_addr1;
	private String home_addr2;
	private String home_zipcode;
	private String home_lat;
	private String home_lng;
	private String home_amenities;
	private String home_safety;
	private String home_guest_access;
	private String home_rules;
	private String home_details;
	private String home_checkin;
	private int home_min_stay;
	private int home_max_stay;
	private String home_blocked_date;
	private int home_price;
	private String home_currency;

	public HomeDTO() {
		super();
	}

	public HomeDTO(String member_email, int home_seq, String home_name, String home_contents, String home_type,
			int home_people, String home_bedroom, String home_bed, String home_nation, String home_addr1,
			String home_addr2, String home_zipcode, String home_lat, String home_lng, String home_amenities,
			String home_safety, String home_guest_access, String home_rules, String home_details, String home_checkin,
			int home_min_stay, int home_max_stay, String home_blocked_date, int home_price, String home_currency) {
		super();
		this.member_email = member_email;
		this.home_seq = home_seq;
		this.home_name = home_name;
		this.home_contents = home_contents;
		this.home_type = home_type;
		this.home_people = home_people;
		this.home_bedroom = home_bedroom;
		this.home_bed = home_bed;
		this.home_nation = home_nation;
		this.home_addr1 = home_addr1;
		this.home_addr2 = home_addr2;
		this.home_zipcode = home_zipcode;
		this.home_lat = home_lat;
		this.home_lng = home_lng;
		this.home_amenities = home_amenities;
		this.home_safety = home_safety;
		this.home_guest_access = home_guest_access;
		this.home_rules = home_rules;
		this.home_details = home_details;
		this.home_checkin = home_checkin;
		this.home_min_stay = home_min_stay;
		this.home_max_stay = home_max_stay;
		this.home_blocked_date = home_blocked_date;
		this.home_price = home_price;
		this.home_currency = home_currency;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
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

	public String getHome_contents() {
		return home_contents;
	}

	public void setHome_contents(String home_contents) {
		this.home_contents = home_contents;
	}

	public String getHome_type() {
		return home_type;
	}

	public void setHome_type(String home_type) {
		this.home_type = home_type;
	}

	public int getHome_people() {
		return home_people;
	}

	public void setHome_people(int home_people) {
		this.home_people = home_people;
	}

	public String getHome_bedroom() {
		return home_bedroom;
	}

	public void setHome_bedroom(String home_bedroom) {
		this.home_bedroom = home_bedroom;
	}

	public String getHome_bed() {
		return home_bed;
	}

	public void setHome_bed(String home_bed) {
		this.home_bed = home_bed;
	}

	public String getHome_nation() {
		return home_nation;
	}

	public void setHome_nation(String home_nation) {
		this.home_nation = home_nation;
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

	public String getHome_zipcode() {
		return home_zipcode;
	}

	public void setHome_zipcode(String home_zipcode) {
		this.home_zipcode = home_zipcode;
	}

	public String getHome_lat() {
		return home_lat;
	}

	public void setHome_lat(String home_lat) {
		this.home_lat = home_lat;
	}

	public String getHome_lng() {
		return home_lng;
	}

	public void setHome_lng(String home_lng) {
		this.home_lng = home_lng;
	}

	public String getHome_amenities() {
		return home_amenities;
	}

	public void setHome_amenities(String home_amenities) {
		this.home_amenities = home_amenities;
	}

	public String getHome_safety() {
		return home_safety;
	}

	public void setHome_safety(String home_safety) {
		this.home_safety = home_safety;
	}

	public String getHome_guest_access() {
		return home_guest_access;
	}

	public void setHome_guest_access(String home_guest_access) {
		this.home_guest_access = home_guest_access;
	}

	public String getHome_rules() {
		return home_rules;
	}

	public void setHome_rules(String home_rules) {
		this.home_rules = home_rules;
	}

	public String getHome_details() {
		return home_details;
	}

	public void setHome_details(String home_details) {
		this.home_details = home_details;
	}

	public String getHome_checkin() {
		return home_checkin;
	}

	public void setHome_checkin(String home_checkin) {
		this.home_checkin = home_checkin;
	}

	public int getHome_min_stay() {
		return home_min_stay;
	}

	public void setHome_min_stay(int home_min_stay) {
		this.home_min_stay = home_min_stay;
	}

	public int getHome_max_stay() {
		return home_max_stay;
	}

	public void setHome_max_stay(int home_max_stay) {
		this.home_max_stay = home_max_stay;
	}

	public String getHome_blocked_date() {
		return home_blocked_date;
	}

	public void setHome_blocked_date(String home_blocked_date) {
		this.home_blocked_date = home_blocked_date;
	}

	public int getHome_price() {
		return home_price;
	}

	public void setHome_price(int home_price) {
		this.home_price = home_price;
	}

	public String getHome_currency() {
		return home_currency;
	}

	public void setHome_currency(String home_currency) {
		this.home_currency = home_currency;
	}

	
	
	
}
