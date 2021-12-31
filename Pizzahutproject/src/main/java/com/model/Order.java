package com.model;

import java.util.Date;
import java.util.Objects;

import com.model.Product;

public class Order {
		private User user;
		private Product product;
		private int quantity;
		private Double price;
		private Date orderdate;
		
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public Product getProduct() {
			return product;
		}
		public void setProduct(Product product) {
			this.product = product;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		public Double getPrice() {
			return price;
		}
		public void setPrice(Double price) {
			this.price = price;
		}
		public Date getOrderdate() {
			return orderdate;
		}
		public void setOrderdate(Date orderdate) {
			this.orderdate = orderdate;
		}
		public Order(User user, Product product, int quantity, Double price, java.util.Date orderdate2) {
			super();
			this.user = user;
			this.product = product;
			this.quantity = quantity;
			this.price = price;
			this.orderdate = orderdate2;
		}
		public Order() {
			super();
			// TODO Auto-generated constructor stub
		}
		@Override
		public String toString() {
			return "Order \nuser=" + user + ", \nproduct=" + product + ", \nquantity=" + quantity + ", price=" + price
					+ ", orderdate=" + orderdate + "]";
		}
		@Override
		public int hashCode() {
			return Objects.hash(orderdate, price, product, quantity, user);
		}
		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Order other = (Order) obj;
			return Objects.equals(orderdate, other.orderdate) && Objects.equals(price, other.price)
					&& Objects.equals(product, other.product) && quantity == other.quantity
					&& Objects.equals(user, other.user);
		}
				
}
