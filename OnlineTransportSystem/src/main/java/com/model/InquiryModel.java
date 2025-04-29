package com.model;

public class InquiryModel {
	
	    private int InquiryId;	
	    private String pid;
	    private String inquiry;
	    private String CustomerName;
	    private String Reply;
	    private String Date;
	    
		public InquiryModel(int inquiryId,String pid, String inquiry, String customerName, String reply,String date) {
			super();
			this.InquiryId = inquiryId;
			this.pid = pid;
			this.inquiry = inquiry;
			this.CustomerName = customerName;
			this.Reply = reply;
			this.Date = date;
		}
		public String getPid() {
			return pid;
		}
		public void setPid(String pid) {
			this.pid = pid;
		}
		public int getInquiryId() {
			return InquiryId;
		}
		public void setInquiryId(int inquiryId) {
			InquiryId = inquiryId;
		}
		public String getInquiry() {
			return inquiry;
		}
		public void setInquiry(String inquiry) {
			this.inquiry = inquiry;
		}
		public String getCustomerName() {
			return CustomerName;
		}
		public void setCustomerName(String customerName) {
			CustomerName = customerName;
		}
		public String getReply() {
			return Reply;
		}
		public void setReply(String reply) {
			Reply = reply;
		}
		public String getDate() {
			return Date;
		}
		public void setDate(String date) {
			Date = date;
		}
	    

}
