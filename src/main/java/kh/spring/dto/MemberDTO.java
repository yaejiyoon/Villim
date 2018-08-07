package kh.spring.dto;

public class MemberDTO {

	private int member_seq;
	private String member_email;
	private String member_name;
	
	private String member_pw;
	private String member_birth;
	private String memeber_gender;
	private String member_picture;
	private String member_phone;
	private String member_block;
	private String member_date;
	private String member_location;
	
	
	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public int getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_birth() {
		return member_birth;
	}

	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}

	public String getMemeber_gender() {
		return memeber_gender;
	}

	public void setMemeber_gender(String memeber_gender) {
		this.memeber_gender = memeber_gender;
	}

	public String getMember_picture() {
		return member_picture;
	}

	public void setMember_picture(String member_picture) {
		this.member_picture = member_picture;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_block() {
		return member_block;
	}

	public void setMember_block(String member_block) {
		this.member_block = member_block;
	}

	public String getMember_date() {
		return member_date;
	}

	public void setMember_date(String member_date) {
		this.member_date = member_date;
	}

	public String getMember_location() {
		return member_location;
	}

	public void setMember_location(String member_location) {
		this.member_location = member_location;
	}

	public MemberDTO(int member_seq, String member_email, String member_pw, String member_birth, String memeber_gender,
			String member_picture, String member_phone, String member_block, String member_date,
			String member_location) {
		super();
		this.member_seq = member_seq;
		this.member_email = member_email;
		this.member_pw = member_pw;
		this.member_birth = member_birth;
		this.memeber_gender = memeber_gender;
		this.member_picture = member_picture;
		this.member_phone = member_phone;
		this.member_block = member_block;
		this.member_date = member_date;
		this.member_location = member_location;
	}

	public MemberDTO() {
	}
	public MemberDTO(String member_email, String member_name, String member_birth) {
		this.member_email = member_email;
		this.member_name = member_name;
		this.member_birth = member_birth;
	}
}
