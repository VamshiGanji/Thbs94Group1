package com.torryharris.Electroware.model;

public class MyOrders {
	private String proName;
	private int price;
	private String cardName;
	private long cardNo;
	private long phone;
	private String expiryDate;
	private int zipcode;
	
	public MyOrders() {}

	public MyOrders(String proName, int price, String cardName, long cardNo, long phone, String expiryDate,
			int zipcode) {
		super();
		this.proName = proName;
		this.price = price;
		this.cardName = cardName;
		this.cardNo = cardNo;
		this.phone = phone;
		this.expiryDate = expiryDate;
		this.zipcode = zipcode;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	@Override
	public String toString() {
		return "MyOrders [proName=" + proName + ", price=" + price + ", cardName=" + cardName + ", cardNo=" + cardNo
				+ ", phone=" + phone + ", expiryDate=" + expiryDate + ", zipcode=" + zipcode + "]";
	}
	
		
}
