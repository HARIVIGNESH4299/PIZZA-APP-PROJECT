package com.Dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Interface.Admininterface;
import com.model.Admin;
import com.model.Product;

public class Admindao implements Admininterface{
	
		public   Admin validateadmin(String email1, String pass)
		{
			ConnectionUtill con=new ConnectionUtill();
			Connection c=con.getDbconnection();
			String query1="select * from admins where admin_email='"+email1+"' and password='"+pass+"'";
		Admin admin=null;
			try {
				Statement stmt=c.createStatement();
				ResultSet rs=stmt.executeQuery(query1);
				if(rs.next())
				{	
				admin=new Admin(email1,rs.getString(2),pass);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return admin;
		}
	}

