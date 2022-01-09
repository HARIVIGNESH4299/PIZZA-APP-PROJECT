package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pizza.dao.OrderDaoImpl;
import com.pizza.dao.ProductDaoImpl;
import com.pizza.dao.UserDaoImpl;
import com.pizza.model.Order;
import com.pizza.model.Product;
import com.pizza.model.User;

@WebServlet("/order")
/**
 * Servlet implementation class OrderServlet
 */
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
				
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	*/
	                  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		User user=(User) session.getAttribute("user");
	//	System.out.println("user "+ user);		
		
		Product product=(Product) session.getAttribute("productid");
	//	System.out.println("product "+product);		

		int quantity=Integer.parseInt(request.getParameter("qty"));
		System.out.println(quantity);	
		
		Double productprice=Double.parseDouble(request.getParameter("price"));
		System.out.println(productprice);
		
		UserDaoImpl dao=new UserDaoImpl();
		
		dao.update(productprice,user.getEmail());
				OrderDaoImpl orderdao=new OrderDaoImpl();
				Order order=new Order(user,product,quantity,productprice,null);
				System.out.println(order);
				int i=orderdao.orderproduct(order);
				if(i>0) {
					response.sendRedirect("Showproducts.jsp");
				}
				else {
					response.sendRedirect("Order.jsp");
				}				
	}
}



