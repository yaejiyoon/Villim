package kh.spring.dto;

public class LikeyListDTO {
	private int likeyList_seq;
	private String likeyList_name;
	private String member_email;
	
	public LikeyListDTO() {
		
	}
	
	public LikeyListDTO(int likeyList_seq, String likeyList_name, String member_email) {
		super();
		this.likeyList_seq = likeyList_seq;
		this.likeyList_name = likeyList_name;
		this.member_email = member_email;
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
	
	
}
