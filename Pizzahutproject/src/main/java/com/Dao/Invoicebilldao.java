package com.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Interface.Invoicebillinterface;
import com.model.Invoicebill;
import com.model.Order;
import com.model.User;
//import com.dao.ConnectionUtill;

public class Invoicebilldao implements Invoicebillinterface{
		
	public ResultSet showBill(User user) {
		
		String showQuery = "select u.user_name,u.phonenumber,u.email,u.address,o.product_id,o.quantity,o.total_prize,o.order_date from users u join orders o on u.user_id=o.user_id";
		ConnectionUtill con=new ConnectionUtill();
		Connection c=con.getDbconnection();
		ResultSet rs=null;
		try {
			Statement stmt = c.createStatement();
			 rs = stmt.executeQuery(showQuery);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}