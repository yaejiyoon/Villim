package kh.spring.dto;

public class BedDTO {
	private int bed_seq;
	private int home_seq;
	private String bed_single;
	private String bed_double;
	private String bed_queen;
	
	public BedDTO() {
		
	}
	
	public BedDTO(int bed_seq, int home_seq, String bed_single, String bed_double, String bed_queen) {
		super();
		this.bed_seq = bed_seq;
		this.home_seq = home_seq;
		this.bed_single = bed_single;
		this.bed_double = bed_double;
		this.bed_queen = bed_queen;
	}
	public int getBed_seq() {
		return bed_seq;
	}
	public void setBed_seq(int bed_seq) {
		this.bed_seq = bed_seq;
	}
	public int getHome_seq() {
		return home_seq;
	}
	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}
	public String getBed_single() {
		return bed_single;
	}
	public void setBed_single(String bed_single) {
		this.bed_single = bed_single;
	}
	public String getBed_double() {
		return bed_double;
	}
	public void setBed_double(String bed_double) {
		this.bed_double = bed_double;
	}
	public String getBed_queen() {
		return bed_queen;
	}
	public void setBed_queen(String bed_queen) {
		this.bed_queen = bed_queen;
	}
	
	
}
