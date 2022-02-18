package com.torryharris.Electroware.model;

import java.io.InputStream;

public class ProductDetails {
	private String productName;
	private String productType;
	private int price;
	private	int stock;
	private String description;
	
	public ProductDetails(String productName, String productType, int price, int stock, String description) {
		super();
		this.productName = productName;
		this.productType = productType;
		this.price = price;
		this.stock = stock;
		this.description = description;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "ProductDetails [productName=" + productName + ", productType=" + productType + ", price=" + price
				+ ", stock=" + stock + ", description=" + description + "]";
	}
	
	
}