package com.pizzahut.model;

import java.util.Objects;

public class Product {
	private int productid;
	private String productname;
	private String size;
	private Double price;
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Product(int productid, String productname, String size, Double price) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.size = size;
		this.price = price;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Product [productid=" + productid + ", productname=" + productname + ", size=" + size + ", price="
				+ price + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(price, productid, productname, size);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(price, other.price) && productid == other.productid
				&& Objects.equals(productname, other.productname) && Objects.equals(size, other.size);
	}
}
