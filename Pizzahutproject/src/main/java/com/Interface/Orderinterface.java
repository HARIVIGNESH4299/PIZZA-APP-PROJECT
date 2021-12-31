package com.Interface;

import java.util.List;

import com.model.Order;

public interface Orderinterface {

	public List<Order> showorder();
	public int orderproduct(Order orders);
	public int delete(int deleteid);
	public Order findid(int id);
}
