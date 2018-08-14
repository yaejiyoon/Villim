package kh.spring.dto;

public class Review_H_DTO {
	String member_picture;
	String member_name;
	String g_review_public;
	String g_review_date;

	public Review_H_DTO() {};
	public Review_H_DTO(String member_picture, String member_name, String g_review_public, String g_review_date) {
		super();
		this.member_picture = member_picture;
		this.member_name = member_name;
		this.g_review_public = g_review_public;
		this.g_review_date = g_review_date;
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
	}

}
