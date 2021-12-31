package com.model;

import java.util.Objects;

public class Product {
	private String productname;
	private String size;
	private Double price;
	

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
	
	public Product(String productname,String size,Double price) {
		super();
		this.productname = productname;
		this.size = size;
		this.price = price;
	}
	
	@Override
	public String toString() {
		return " [productname=" + productname + ", size=" + size + ", price=" + price + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(price, productname, size);
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
		return  Objects.equals(price, other.price) && Objects.equals(productname, other.productname)
				&& Objects.equals(size, other.size);
	}
	
}
