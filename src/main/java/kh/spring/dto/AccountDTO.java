package kh.spring.dto;

public class AccountDTO {
	private int account_seq;
	private String host_email;
	private String account_bank;
	private String account_number;
	private String account_member_number;

	public AccountDTO() {
		super();
	}

	public String getAccount_member_number() {
		return account_member_number;
	}

	public void setAccount_member_number(String account_member_number) {
		this.account_member_number = account_member_number;
	}

	public int getAccount_seq() {
		return account_seq;
	}

	public void setAccount_seq(int account_seq) {
		this.account_seq = account_seq;
	}

	public String getHost_email() {
		return host_email;
	}

	public void setHost_email(String host_email) {
		this.host_email = host_email;
	}

	public String getAccount_bank() {
		return account_bank;
	}

	public void setAccount_bank(String account_bank) {
		this.account_bank = account_bank;
	}

	public String getAccount_number() {
		return account_number;
	}

	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}

}
