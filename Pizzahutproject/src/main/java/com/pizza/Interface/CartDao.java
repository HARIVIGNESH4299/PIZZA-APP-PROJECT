package com.pizza.Interface;

import java.util.List;

import com.pizza.model.Cart;

public interface CartDao {

	public  int insertCart(Cart carts);
	public List<Cart> showcart();
	
}
