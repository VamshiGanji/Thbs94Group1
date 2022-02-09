package com.torryharris.Electroware.model;

public class MyOrders {
	private String cardName;
	private long cardNo;
	private long phone;
	private String expiryDate;
	private	int code;
	private int zipcode;
	public MyOrders(String cardName, long cardNo, long phone, String expiryDate, int code, int zipcode) {
		super();
		this.cardName = cardName;
		this.cardNo = cardNo;
		this.phone = phone;
		this.expiryDate = expiryDate;
		this.code = code;
		this.zipcode = zipcode;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public long getCardNo() {
		return cardNo;
	}
	public void setCardNo(long cardNo) {
		this.cardNo = cardNo;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	@Override
	public String toString() {
		return "MyOrders [cardName=" + cardName + ", cardNo=" + cardNo + ", phone=" + phone + ", expiryDate="
				+ expiryDate + ", code=" + code + ", zipcode=" + zipcode + "]";
	}
	
	
}
