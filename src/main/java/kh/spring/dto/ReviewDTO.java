package kh.spring.dto;

public class ReviewDTO {
	int home_seq;
	String publicReview;
	String date;
	String home_name;

	public ReviewDTO() {
	}

	public ReviewDTO(int home_seq, String publicReview, String date, String home_name) {
		super();
		this.home_seq = home_seq;
		this.publicReview = publicReview;
		this.date = date;
		this.home_name = home_name;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}

	public String getPublicReview() {
		return publicReview;
	}

	public void setPublicReview(String publicReview) {
		this.publicReview = publicReview;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getHome_name() {
		return home_name;
	}

	public void setHome_name(String home_name) {
		this.home_name = home_name;
	};

}
