package com.Dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Cart;
import com.model.Order;
import com.model.Product;
import com.model.User;
import com.Interface.Cartinterface;
//import com.dao.ConnectionUtill;
//import com.dao.Orderdao;
//import com.dao.Productdao;

public class Cartdao implements Cartinterface{
public  int insertCart(Cart carts) {
			ConnectionUtill con = new ConnectionUtill();
			Connection c = con.getDbconnection();
		String cartQuery="insert into cart(user_id,product_id,quantity,total_prize) values (?,?,?,?)";
	
		PreparedStatement pstmt = null;
		int cart1=0;
		try {
			pstmt = c.prepareStatement(cartQuery);
			Userdao userdao=new Userdao();
			Productdao productdao=new Productdao();
			int userid=userdao.finduserid(carts.getUser());
			int proId=productdao.findProductId(carts.getProduct());
			pstmt.setInt(1,userid);
			pstmt.setInt(2, proId);
			pstmt.setInt(3,carts.getQuantity());
			pstmt.setDouble(4,carts.getProduct().getPrice()*carts.getQuantity());		
			cart1 = pstmt.executeUpdate();
		} catch (SQLException e) {
			// catch the exception and get that message
			e.printStackTrace();
			System.out.println("Value not Setted in the query");
		}		
		return cart1;	
	}
	
public List<Cart> showcart(){
	List<Cart> cartList = new ArrayList<Cart>();
	String query="select * from cart";
	ConnectionUtill con = new ConnectionUtill();
	Connection c = con.getDbconnection();
	Statement stmt=null;
	try {
		 stmt=c.createStatement();
		 ResultSet rs = stmt.executeQuery(query);
			Userdao userdao=new Userdao();
			Productdao productdao=new Productdao();
			Orderdao orderdao = new Orderdao();
			while (rs.next()) {
				User user=userdao.findid(rs.getInt(2));
				Product product=productdao.findid(rs.getInt(3));
				Cart cart=new Cart(user,product,rs.getInt(4),rs.getDouble(5));
				cartList.add(cart);		
			}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
	return cartList;
}
}	
