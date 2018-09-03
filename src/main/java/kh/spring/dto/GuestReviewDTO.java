package kh.spring.dto;

public class GuestReviewDTO implements Comparable<GuestReviewDTO> {
	int g_review_seq;
	int home_seq;
	String member_email;
	int g_review_satisfaction;
	int g_review_accuracy;
	int g_review_cleanliness;
	int g_review_checkIn;
	int g_review_amenities;
	int g_review_communication;
	int g_review_location;
	int g_review_value;
	String g_review_repurchase;
	String g_review_public;
	String g_review_private;
	String g_review_date;
	int count;
	String h_review_public;
	String h_review_date;

	String member_name;
	String member_picture;
	int reservation_seq;
	public GuestReviewDTO() {
		
	}

	public GuestReviewDTO(int g_review_seq, int home_seq, String member_email, int g_review_satisfaction,
			int g_review_accuracy, int g_review_cleanliness, int g_review_checkIn, int g_review_amenities,
			int g_review_communication, int g_review_location, int g_review_value, String g_review_repurchase,
			String g_review_public, String g_review_private, String g_review_date, String member_name,
			String member_picture, int reservation_seq) {
		super();
		this.g_review_seq = g_review_seq;
		this.home_seq = home_seq;
		this.member_email = member_email;
		this.g_review_satisfaction = g_review_satisfaction;
		this.g_review_accuracy = g_review_accuracy;
		this.g_review_cleanliness = g_review_cleanliness;
		this.g_review_checkIn = g_review_checkIn;
		this.g_review_amenities = g_review_amenities;
		this.g_review_communication = g_review_communication;
		this.g_review_location = g_review_location;
		this.g_review_value = g_review_value;
		this.g_review_repurchase = g_review_repurchase;
		this.g_review_public = g_review_public;
		this.g_review_private = g_review_private;
		this.g_review_date = g_review_date;
		this.member_name = member_name;
		this.member_picture = member_picture;
		this.reservation_seq=reservation_seq;
	}

	public int getG_review_seq() {
		return g_review_seq;
	}

	public void setG_review_seq(int g_review_seq) {
		this.g_review_seq = g_review_seq;
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

	public int getG_review_satisfaction() {
		return g_review_satisfaction;
	}

	public void setG_review_satisfaction(int g_review_satisfaction) {
		this.g_review_satisfaction = g_review_satisfaction;
	}

	public int getG_review_accuracy() {
		return g_review_accuracy;
	}

	public void setG_review_accuracy(int g_review_accuracy) {
		this.g_review_accuracy = g_review_accuracy;
	}

	public int getG_review_cleanliness() {
		return g_review_cleanliness;
	}

	public void setG_review_cleanliness(int g_review_cleanliness) {
		this.g_review_cleanliness = g_review_cleanliness;
	}

	public int getG_review_checkIn() {
		return g_review_checkIn;
	}

	public void setG_review_checkIn(int g_review_checkIn) {
		this.g_review_checkIn = g_review_checkIn;
	}

	public int getG_review_amenities() {
		return g_review_amenities;
	}

	public void setG_review_amenities(int g_review_amenities) {
		this.g_review_amenities = g_review_amenities;
	}

	public int getG_review_communication() {
		return g_review_communication;
	}

	public void setG_review_communication(int g_review_communication) {
		this.g_review_communication = g_review_communication;
	}

	public int getG_review_location() {
		return g_review_location;
	}

	public void setG_review_location(int g_review_location) {
		this.g_review_location = g_review_location;
	}

	public int getG_review_value() {
		return g_review_value;
	}

	public void setG_review_value(int g_review_value) {
		this.g_review_value = g_review_value;
	}

	public String getG_review_repurchase() {
		return g_review_repurchase;
	}

	public void setG_review_repurchase(String g_review_repurchase) {
		this.g_review_repurchase = g_review_repurchase;
	}

	public String getG_review_public() {
		return g_review_public;
	}

	public void setG_review_public(String g_review_public) {
		this.g_review_public = g_review_public;
	}

	public String getG_review_private() {
		return g_review_private;
	}

	public void setG_review_private(String g_review_private) {
		this.g_review_private = g_review_private;
	}

	public String getG_review_date() {
		return g_review_date;
	}

	public void setG_review_date(String g_review_date) {
		this.g_review_date = g_review_date;
	}

	public int getCount() {
		return count;
	}
	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_picture() {
		return member_picture;
	}

	public void setMember_picture(String member_picture) {
		this.member_picture = member_picture;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getH_review_public() {
		return h_review_public;
	}

	public void setH_review_public(String h_review_public) {
		this.h_review_public = h_review_public;
	}

	public String getH_review_date() {
		return h_review_date;
	}

	public void setH_review_date(String h_review_date) {
		this.h_review_date = h_review_date;
	}

	public int getReservation_seq() {
		return reservation_seq;
	}

	public void setReservation_seq(int reservation_seq) {
		this.reservation_seq = reservation_seq;
	}

	@Override
	public int compareTo(GuestReviewDTO o) {
		if (g_review_satisfaction > o.getG_review_satisfaction()) {
			return -1;
		} else if (g_review_satisfaction < o.getG_review_satisfaction()) {
			return 1;
		} else if (g_review_accuracy > o.getG_review_accuracy()) {
			return -1;
		} else if (g_review_accuracy < o.getG_review_accuracy()) {
			return 1;
		} else if (g_review_cleanliness > o.getG_review_cleanliness()) {
			return -1;
		} else if (g_review_cleanliness < o.getG_review_cleanliness()) {
			return 1;
		} else if (g_review_checkIn > o.getG_review_checkIn()) {
			return -1;
		} else if (g_review_checkIn < o.getG_review_checkIn()) {
			return 1;
		} else if (g_review_amenities > o.getG_review_amenities()) {
			return -1;
		} else if (g_review_amenities < o.getG_review_amenities()) {
			return 1;
		} else if (g_review_communication > o.getG_review_communication()) {
			return -1;
		} else if (g_review_communication < o.getG_review_communication()) {
			return 1;
		} else if (g_review_location > o.getG_review_location()) {
			return -1;
		} else if (g_review_location < o.getG_review_location()) {
			return 1;
		} else if (g_review_value > o.getG_review_value()) {
			return -1;
		} else if (g_review_value < o.getG_review_value()) {
			return 1;
		} else {
			return 0;
		}
	}

}
