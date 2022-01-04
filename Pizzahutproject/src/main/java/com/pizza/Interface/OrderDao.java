package com.pizza.Interface;

import java.util.List;

import com.pizza.model.Order;

public interface OrderDao {

	public List<Order> showorder();
	public int orderproduct(Order orders);
	public int delete(int deleteid);
	public Order findid(int id);
}
