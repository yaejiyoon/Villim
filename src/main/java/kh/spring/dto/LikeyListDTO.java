package kh.spring.dto;

public class LikeyListDTO {
	private int likeyList_seq;
	private String likeyList_name;
	private String member_email;
	private int home_seq;
	
	public LikeyListDTO() {
		
	}
	
	public LikeyListDTO(int likeyList_seq, String likeyList_name, String member_email, int home_seq) {
		super();
		this.likeyList_seq = likeyList_seq;
		this.likeyList_name = likeyList_name;
		this.member_email = member_email;
		this.home_seq = home_seq;
	}



	public int getLikeyList_seq() {
		return likeyList_seq;
	}

	public void setLikeyList_seq(int likeyList_seq) {
		this.likeyList_seq = likeyList_seq;
	}

	public String getLikeyList_name() {
		return likeyList_name;
	}

	public void setLikeyList_name(String likeyList_name) {
		this.likeyList_name = likeyList_name;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public int getHome_seq() {
		return home_seq;
	}

	public void setHome_seq(int home_seq) {
		this.home_seq = home_seq;
	}
	
	
	
}
