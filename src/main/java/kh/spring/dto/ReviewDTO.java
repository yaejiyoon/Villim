package kh.spring.dto;

public class ReviewDTO {
	int home_seq;
	String g_review_public;
	String g_review_date;
	String home_name;

	public ReviewDTO() {
	}

	public ReviewDTO(int home_seq, String g_review_public, String g_review_date, String home_name) {
		super();
		this.home_seq = home_seq;
		this.g_review_public = g_review_public;
		this.g_review_date = g_review_date;
		this.home_name = home_name;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
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

	public String getHome_name() {
		return home_name;
	}

	public void setHome_name(String home_name) {
		this.home_name = home_name;
	}

}
