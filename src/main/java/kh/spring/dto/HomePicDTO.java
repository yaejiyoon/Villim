package kh.spring.dto;

public class HomePicDTO {
	private int home_pic_seq;
	private int home_seq;
	private String home_pic_name;

	public HomePicDTO() {
		super();
	}

	public HomePicDTO(int home_pic_seq, int home_seq, String home_pic_name) {
		super();
		this.home_pic_seq = home_pic_seq;
		this.home_seq = home_seq;
		this.home_pic_name = home_pic_name;
	}

	public int getHome_pic_seq() {
		return home_pic_seq;
	}

	public void setHome_pic_seq(int home_pic_seq) {
		this.home_pic_seq = home_pic_seq;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}

	public String getHome_pic_name() {
		return home_pic_name;
	}

	public void setHome_pic_name(String home_pic_name) {
		this.home_pic_name = home_pic_name;
	}

}
