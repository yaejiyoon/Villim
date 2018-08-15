package kh.spring.dto;

public class Review_H_DTO {
	int g_review_seq;
	int home_seq;
	String member_picture;
	String member_name;
	String g_review_public;
	String g_review_date;

	public Review_H_DTO() {
	}

	public Review_H_DTO(int g_review_seq, int home_seq, String member_picture, String member_name,
			String g_review_public, String g_review_date) {
		super();
		this.g_review_seq = g_review_seq;
		this.home_seq = home_seq;
		this.member_picture = member_picture;
		this.member_name = member_name;
		this.g_review_public = g_review_public;
		this.g_review_date = g_review_date;
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

	public String getMember_picture() {
		return member_picture;
	}

	public void setMember_picture(String member_picture) {
		this.member_picture = member_picture;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getG_review_public() {
		return g_review_public;
	}

	public void setG_review_public(String g_review_public) {
		this.g_review_public = g_review_public;
	}

	public String getG_review_date() {
		return g_review_date;
	}

	public void setG_review_date(String g_review_date) {
		this.g_review_date = g_review_date;
	};

}
