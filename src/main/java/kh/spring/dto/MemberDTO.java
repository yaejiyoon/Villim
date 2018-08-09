package kh.spring.dto;

public class MemberDTO {
	int member_seq;
	String member_email;
	String member_name;
	String member_pw;
	String member_birth;
	String member_picture;
	String member_phone;
	String member_phone_agreement;
	String member_block;
	String member_signup_date;
	String member_location;
	String member_gender;
	String member_introduction;

	public MemberDTO(int member_seq, String member_email, String member_name, String member_pw, String member_birth,
			String member_picture, String member_phone, String member_phone_agreement, String member_block,
			String member_signup_date, String member_location, String member_gender, String member_introduction) {
		super();
		this.member_seq = member_seq;
		this.member_email = member_email;
		this.member_name = member_name;
		this.member_pw = member_pw;
		this.member_birth = member_birth;
		this.member_picture = member_picture;
		this.member_phone = member_phone;
		this.member_phone_agreement = member_phone_agreement;
		this.member_block = member_block;
		this.member_signup_date = member_signup_date;
		this.member_location = member_location;
		this.member_gender = member_gender;
		this.member_introduction = member_introduction;
	}

	public MemberDTO() {
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

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
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

	public String getMember_phone_agreement() {
		return member_phone_agreement;
	}

	public void setMember_phone_agreement(String member_phone_agreement) {
		this.member_phone_agreement = member_phone_agreement;
	}

	public String getMember_block() {
		return member_block;
	}

	public void setMember_block(String member_block) {
		this.member_block = member_block;
	}

	public String getMember_signup_date() {
		return member_signup_date;
	}

	public void setMember_signup_date(String member_signup_date) {
		this.member_signup_date = member_signup_date;
	}

	public String getMember_location() {
		return member_location;
	}

	public void setMember_location(String member_location) {
		this.member_location = member_location;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}

	public String getMember_introduction() {
		return member_introduction;
	}

	public void setMember_introduction(String member_introduction) {
		this.member_introduction = member_introduction;
	}

}
