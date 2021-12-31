package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.catalina.connector.Response;

import com.Dao.ConnectionUtill;
import com.Dao.Userdao;
import com.model.User;
@WebServlet("/Sample")
public class Sample extends HttpServlet{

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doPost(req, resp);
			
			//Connection c = ConnectionUtill.getDbconnection();
//			String username=req.getParameter("username");
//			String password=req.getParameter("password");
//			PrintWriter pw=resp.getWriter();
//			pw.write("USERNAME"+username);
//			pw.write("PASSWORD"+password);
			
		}
		
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		//	doGet(req, resp);
			//Connection c = ConnectionUtill.getDbconnection();
			String firstname=req.getParameter("firstname");
			String email=req.getParameter("email");
			String address=req.getParameter("address");
			long phonenumber=Long.parseLong(req.getParameter("phonenumber"));
			//Double wallet=Double.parseDouble(req.getParameter("wallet"));
			String password=req.getParameter("password");
			User user=new User(firstname,phonenumber,address,email,null,password);
			Userdao userdao=new Userdao();
			
		userdao.insert(user);
				resp.sendRedirect("login.jsp");
			
		}
}
