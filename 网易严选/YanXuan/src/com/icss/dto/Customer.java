package com.icss.dto;

public class Customer {
	private int CusId;
	private String CusEmail;
	private String CusPwd;
	private String CusPhone;
	private int CusIsAdmin;
	private int CusStatus;
	private int CusIsVip;
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Customer(String cusEmail, String cusPwd, String cusPhone) {
		super();
		CusEmail = cusEmail;
		CusPwd = cusPwd;
		CusPhone = cusPhone;
	}

	public Customer(int cusId, String cusEmail, String cusPwd, String cusPhone, int cusIsAdmin, int cusStatus,
			int cusIsVip) {
		super();
		CusId = cusId;
		CusEmail = cusEmail;
		CusPwd = cusPwd;
		CusPhone = cusPhone;
		CusIsAdmin = cusIsAdmin;
		CusStatus = cusStatus;
		CusIsVip = cusIsVip;
	}
	public int getCusId() {
		return CusId;
	}
	public void setCusId(int cusId) {
		CusId = cusId;
	}
	public String getCusEmail() {
		return CusEmail;
	}
	public void setCusEmail(String cusEmail) {
		CusEmail = cusEmail;
	}
	public String getCusPwd() {
		return CusPwd;
	}
	public void setCusPwd(String cusPwd) {
		CusPwd = cusPwd;
	}
	public String getCusPhone() {
		return CusPhone;
	}
	public void setCusPhone(String cusPhone) {
		CusPhone = cusPhone;
	}
	public int getCusIsAdmin() {
		return CusIsAdmin;
	}
	public void setCusIsAdmin(int cusIsAdmin) {
		CusIsAdmin = cusIsAdmin;
	}
	public int getCusStatus() {
		return CusStatus;
	}
	public void setCusStatus(int cusStatus) {
		CusStatus = cusStatus;
	}
	public int getCusIsVip() {
		return CusIsVip;
	}
	public void setCusIsVip(int cusIsVip) {
		CusIsVip = cusIsVip;
	}
	@Override
	public String toString() {
		return "Customer [CusId=" + CusId + ", CusEmail=" + CusEmail + ", CusPwd=" + CusPwd + ", CusPhone=" + CusPhone
				+ ", CusIsAdmin=" + CusIsAdmin + ", CusStatus=" + CusStatus + ", CusIsVip=" + CusIsVip + "]";
	}
	
}
