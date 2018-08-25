package kh.spring.dto;

public class HostReviewDTO {
	int h_review_seq;
	int home_seq;
	int g_review_seq;
	String h_review_public;
	String h_review_date;
	String member_email;
	String member_name;
	String member_picture;

	public HostReviewDTO() {
	}

	public HostReviewDTO(int h_review_seq, int home_seq, int g_review_seq, String h_review_public, String h_review_date,
			String member_email, String member_name, String member_picture) {
		super();
		this.h_review_seq = h_review_seq;
		this.home_seq = home_seq;
		this.g_review_seq = g_review_seq;
		this.h_review_public = h_review_public;
		this.h_review_date = h_review_date;
		this.member_email = member_email;
		this.member_name = member_name;
		this.member_picture = member_picture;
	}

	public int getH_review_seq() {
		return h_review_seq;
	}

	public void setH_review_seq(int h_review_seq) {
		this.h_review_seq = h_review_seq;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}

	public int getG_review_seq() {
		return g_review_seq;
	}

	public void setG_review_seq(int g_review_seq) {
		this.g_review_seq = g_review_seq;
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

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
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
	
}
