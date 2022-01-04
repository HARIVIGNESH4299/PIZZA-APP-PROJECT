package com.pizza.dao;

import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.pizza.Interface.UserDao;
import com.pizza.model.User;
import com.pizza.utill.ConnectionUtill;
//import com.pizzahut.dao.ConnectionUtill;
//import com.pizzahut.model.Product;
public class UserDaoImpl implements  UserDao{	
	public  void  insert(User users) {
		ConnectionUtill con=new ConnectionUtill();
		String query="insert into users(user_name,phonenumber,email,address,password)values(?,?,?,?,?)";
			Connection c=con.getDbconnection();
			PreparedStatement pstmt = null;
			//int i=0;
			try {
				pstmt = c.prepareStatement(query);
				pstmt.setString(1, users.getUsername());
				pstmt.setLong(2, users.getPhonenumber());
				pstmt.setString(3, users.getEmail());
				pstmt.setString(4, users.getAddress());
				pstmt.setString(5, users.getPassword());
				 pstmt.executeUpdate();
				System.out.println(" row inserted");
			} catch (SQLException e) 
			{
				System.out.println(e);
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("Value not Setted in the query");
			}		
	} 
	
	public  double update(Double wallet,String useremail) {
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();	
		String select="select wallet from users where email=?";
		String updateQuery="update users set wallet=? where email=?";	
		double well=0;		
		double wallet1 =0;
		try {
			PreparedStatement pstmt1= c.prepareStatement(select);
			pstmt1.setString(1, useremail);
			ResultSet rs=pstmt1.executeQuery();
			while(rs.next()) {
			  wallet1 = rs.getDouble(1);
			}	
			PreparedStatement pstmt11= c.prepareStatement(updateQuery);	
			pstmt11.setDouble(1,wallet1+wallet);
		    pstmt11.setString(2,useremail);
			    well = pstmt11.executeUpdate();
			     System.out.println("updated");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error in query");
		}
		return well;	
	}
	

	public   User validateUser(String email,String password) {
		ConnectionUtill con=new ConnectionUtill();
		Connection c=con.getDbconnection();
		String query="select * from users where email='"+email+"' and password='"+password+"'";
		User user=null;
		try {
			Statement stmt=c.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			if(rs.next())
			{	
			user=new User(rs.getString(2),rs.getLong(3), email,rs.getString(5),rs.getDouble(6),password);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(" statement error");
		}
		return user;
		// TODO Auto-generated method stub
	}
	public  int finduserid(User user) {
		String query="select user_id from users where email=?";
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();
		PreparedStatement pstmt=null;
		int userid=0;
		try {
			pstmt = c.prepareStatement(query);
			pstmt.setString(1, user.getEmail());
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				userid=rs.getInt(1);
				return userid;
			}	
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return userid;	
		
	}
	
	public  User finduser(String useremail) {
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();
		String findProductQuery = "select * from users where email=?";
		User user = null;
		try {
			PreparedStatement pstmt = c.prepareStatement(findProductQuery);
			pstmt.setString(1, useremail);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				user = new User(rs.getString(2),rs.getLong(3), rs.getString(4), rs.getString(5),rs.getDouble(6),rs.getString(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	
	public User findid(int id) {
		ConnectionUtill con = new ConnectionUtill();
		Connection c = con.getDbconnection();
		String findid="select * from users where user_id='"+id+"'" ;
		Statement stmt=null;
		User userid=null;
		try {
			 stmt=c.createStatement();
			 ResultSet rs = stmt.executeQuery(findid);
				while (rs.next()) {
					//--------------------------------------------------------------------------
					userid = new User(rs.getString(2),rs.getLong(3), rs.getString(4), rs.getString(5),rs.getDouble(6),rs.getString(7));
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userid;
	}
	
}
