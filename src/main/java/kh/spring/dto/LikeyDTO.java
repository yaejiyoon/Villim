package kh.spring.dto;

public class LikeyDTO {
	private int likey_seq;
	private int likeyList_seq;
	private int home_seq;
	private String member_email;
	private String home_main_pic;
	
	public LikeyDTO() {
		
	}

	public LikeyDTO(int likey_seq, int likeyList_seq, int home_seq, String member_email, String home_main_pic) {
		super();
		this.likey_seq = likey_seq;
		this.likeyList_seq = likeyList_seq;
		this.home_seq = home_seq;
		this.member_email = member_email;
		this.home_main_pic = home_main_pic;
	}

	public int getLikey_seq() {
		return likey_seq;
	}

	public void setLikey_seq(int likey_seq) {
		this.likey_seq = likey_seq;
	}

	public int getLikeyList_seq() {
		return likeyList_seq;
	}

	public void setLikeyList_seq(int likeyList_seq) {
		this.likeyList_seq = likeyList_seq;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getHome_main_pic() {
		return home_main_pic;
	}

	public void setHome_main_pic(String home_main_pic) {
		this.home_main_pic = home_main_pic;
	}
}
