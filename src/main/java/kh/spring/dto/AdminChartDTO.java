package kh.spring.dto;

public class AdminChartDTO {

	private String reservation_count;
	private String payment_sum;
	private String payment_month;
	private String payment_year;

	public AdminChartDTO() {

	}

	public AdminChartDTO(String reservation_count, String payment_sum, String payment_month, String payment_year) {
		super();
		this.reservation_count = reservation_count;
		this.payment_sum = payment_sum;
		this.payment_month = payment_month;
		this.payment_year = payment_year;
	}

	public String getReservation_count() {
		return reservation_count;
	}

	public void setReservation_count(String reservation_count) {
		this.reservation_count = reservation_count;
	}

	public String getPayment_sum() {
		return payment_sum;
	}

	public void setPayment_sum(String payment_sum) {
		this.payment_sum = payment_sum;
	}

	public String getPayment_month() {
		return payment_month;
	}

	public void setPayment_month(String payment_month) {
		this.payment_month = payment_month;
	}

	public String getPayment_year() {
		return payment_year;
	}

	public void setPayment_year(String payment_year) {
		this.payment_year = payment_year;
	}

}
