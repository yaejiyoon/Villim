package kh.spring.dto;

public class HostReviewDTO {
	int h_review_seq;
	int home_seq;
	int g_review_seq;
	String h_review_public;
	String h_review_date;

	public HostReviewDTO() {
	};

	public HostReviewDTO(int h_review_seq, int home_seq, int g_review_seq, String h_review_public,
			String h_review_date) {
		super();
		this.h_review_seq = h_review_seq;
		this.home_seq = home_seq;
		this.g_review_seq = g_review_seq;
		this.h_review_public = h_review_public;
		this.h_review_date = h_review_date;
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

}
