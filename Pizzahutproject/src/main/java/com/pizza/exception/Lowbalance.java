package com.pizza.exception;

public class Lowbalance  extends Exception{
	@Override
public String getMessage() {
		

		return "user not found";	
		
}	
}
