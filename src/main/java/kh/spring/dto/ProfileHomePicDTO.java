package kh.spring.dto;

public class ProfileHomePicDTO {
	int home_seq;
	String home_name;
	String home_pic_name;

	public ProfileHomePicDTO(int home_seq, String home_name, String home_pic_name) {
		super();
		this.home_seq = home_seq;
		this.home_name = home_name;
		this.home_pic_name = home_pic_name;
	}

	public ProfileHomePicDTO() {};

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}

	public String getHome_name() {
		return home_name;
	}

	public void setHome_name(String home_name) {
		this.home_name = home_name;
	}

	public String getHome_pic_name() {
		return home_pic_name;
	}

	public void setHome_pic_name(String home_pic_name) {
		this.home_pic_name = home_pic_name;
	}

}
