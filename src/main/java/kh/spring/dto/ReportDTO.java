package kh.spring.dto;

public class ReportDTO {
	  int report_seq;
	   String member_email;
	   String member_name;
	   String reported_email;
	   String reported_name;
	   String report_reason;
	   String report_state;
	   String report_date;

	   public ReportDTO() {
	   }

	   public ReportDTO(int report_seq, String member_email, String member_name, String reported_email,
	         String reported_name, String report_reason, String report_state, String report_date) {
	      super();
	      this.report_seq = report_seq;
	      this.member_email = member_email;
	      this.member_name = member_name;
	      this.reported_email = reported_email;
	      this.reported_name = reported_name;
	      this.report_reason = report_reason;
	      this.report_state = report_state;
	      this.report_date = report_date;
	   }

	   public int getReport_seq() {
	      return report_seq;
	   }

	   public void setReport_seq(int report_seq) {
	      this.report_seq = report_seq;
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

	   public String getReported_email() {
	      return reported_email;
	   }

	   public void setReported_email(String reported_email) {
	      this.reported_email = reported_email;
	   }

	   public String getReported_name() {
	      return reported_name;
	   }

	   public void setReported_name(String reported_name) {
	      this.reported_name = reported_name;
	   }

	   public String getReport_reason() {
	      return report_reason;
	   }

	   public void setReport_reason(String report_reason) {
	      this.report_reason = report_reason;
	   }

	   public String getReport_state() {
	      return report_state;
	   }

	   public void setReport_state(String report_state) {
	      this.report_state = report_state;
	   }

	   public String getReport_date() {
	      return report_date;
	   }

	   public void setReport_date(String report_date) {
	      this.report_date = report_date;
	   }


}
