package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Interface.Orderinterface;
import com.model.Order;
import com.model.Product;
import com.model.User;
//import com.pizzahut.dao.ConnectionUtill;
//import com.dao.Productdao;

public class Orderdao implements Orderinterface{
	public List<Order> showorder() {
		List<Order> orderList = new ArrayList<Order>();
		String orderlist = "select * from orders";
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();
		Statement stmt;
		Order order = null;
		try {
			stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery(orderlist);
			Userdao userdao = new Userdao();
			Productdao productdao = new Productdao();
			while (rs.next()) {
				Order orders = new Order();
				User user = userdao.findid(rs.getInt(2));
				Product product = productdao.findid(rs.getInt(3));
				order = new Order(user, product, rs.getInt(4), rs.getDouble(5), rs.getDate(6));
				orderList.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderList;
	}
	public int orderproduct(Order orders) {
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();
		String query = "insert into orders(user_id,product_id,quantity,total_prize,order_date)values(?,?,?,?,?)";
		PreparedStatement pstmt = null;
		int order1 = 0;
		try {
			pstmt = c.prepareStatement(query);
			Userdao userdao = new Userdao();
			int userid = userdao.finduserid(orders.getUser());
			Productdao productdao = new Productdao();
			int proId = productdao.findProductId(orders.getProduct());
			pstmt.setInt(1, userid);
			pstmt.setInt(2, proId);
			pstmt.setInt(3, orders.getQuantity());
			pstmt.setDouble(4, orders.getProduct().getPrice() * orders.getQuantity());
			pstmt.setDate(5, new java.sql.Date(orders.getOrderdate().getTime()));
			order1 = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("sql error");
		}
		return order1;
	}

	public int delete(int deleteid) {
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();
		// int productid=findProductId(proId, size);
		String deleteQuery = "delete from Order where order_id=?";
		PreparedStatement pstmt;
		int prod1d = 0;
		try {
			pstmt = c.prepareStatement(deleteQuery);
			pstmt.setInt(1, deleteid);

//		pstmt.setString(1, produce2.getProductname());	
			prod1d = pstmt.executeUpdate();
			System.out.println("delete");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error in query");
		}
		return prod1d;
	}

	public Order findid(int id) {
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();
		String findid = "select * from order where order_id='" + id + "'";
		Statement stmt = null;
		Order orderid = null;
		try {
			stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery(findid);
			while (rs.next()) {
				orderid = new Order();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderid;
	}

}