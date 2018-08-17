package kh.spring.dto;

public class HomeDescDTO {
	private int home_desc_seq;
	private int home_Seq;
	private String home_desc_explain;
	private String home_desc_space;
	private String home_desc_guest;
	private String home_desc_guestsel;
	private String home_desc_etc;
	private String home_desc_region;
	private String home_desc_traffic;

	public HomeDescDTO() {
		super();
	}

	public HomeDescDTO(int home_desc_seq, int home_Seq, String home_desc_explain, String home_desc_space,
			String home_desc_guest, String home_desc_etc, String home_desc_region, String home_desc_traffic) {
		super();
		this.home_desc_seq = home_desc_seq;
		this.home_Seq = home_Seq;
		this.home_desc_explain = home_desc_explain;
		this.home_desc_space = home_desc_space;
		this.home_desc_guest = home_desc_guest;
		this.home_desc_etc = home_desc_etc;
		this.home_desc_region = home_desc_region;
		this.home_desc_traffic = home_desc_traffic;
	}

	public int getHome_desc_seq() {
		return home_desc_seq;
	}

	public void setHome_desc_seq(int home_desc_seq) {
		this.home_desc_seq = home_desc_seq;
	}

	public int getHome_Seq() {
		return home_Seq;
	}

	public void setHome_Seq(int home_Seq) {
		this.home_Seq = home_Seq;
	}

	public String getHome_desc_explain() {
		return home_desc_explain;
	}

	public void setHome_desc_explain(String home_desc_explain) {
		this.home_desc_explain = home_desc_explain;
	}

	public String getHome_desc_space() {
		return home_desc_space;
	}

	public void setHome_desc_space(String home_desc_space) {
		this.home_desc_space = home_desc_space;
	}

	public String getHome_desc_guest() {
		return home_desc_guest;
	}

	public void setHome_desc_guest(String home_desc_guest) {
		this.home_desc_guest = home_desc_guest;
	}

	public String getHome_desc_etc() {
		return home_desc_etc;
	}

	public void setHome_desc_etc(String home_desc_etc) {
		this.home_desc_etc = home_desc_etc;
	}

	public String getHome_desc_region() {
		return home_desc_region;
	}

	public void setHome_desc_region(String home_desc_region) {
		this.home_desc_region = home_desc_region;
	}

	public String getHome_desc_traffic() {
		return home_desc_traffic;
	}

	public void setHome_desc_traffic(String home_desc_traffic) {
		this.home_desc_traffic = home_desc_traffic;
	}

	public String getHome_desc_guestsel() {
		return home_desc_guestsel;
	}

	public void setHome_desc_guestsel(String home_desc_guestsel) {
		this.home_desc_guestsel = home_desc_guestsel;
	}
}
