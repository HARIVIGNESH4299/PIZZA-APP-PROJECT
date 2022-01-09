package com.pizza.Interface;

import java.sql.ResultSet;
import java.util.List;

import com.pizza.model.Order;
import com.pizza.model.User;

public interface OrderDao {

	public List<Order> showorder(User user);
	public int orderproduct(Order orders);
	public int delete(int deleteid);
	public Order findid(int id);
	public ResultSet orderdetails(int id);
	public boolean ordercancel(int orderid);
}
