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
//		int userid=(int) session.getAttribute("user_id");
//		User user=new User(userid);
//		System.out.println(user);
//		System.out.println(userid);
		User user =(User) session.getAttribute("user");
		System.out.println(user);
		int proid=Integer.parseInt(request.getParameter("productid"));
		ProductDaoImpl dao=new ProductDaoImpl();
		Product productid=dao.findid(proid);
		//Product productid=new Product(proid);
	//	System.out.println(productid.getProductId());
		//System.out.println(proid);
		System.out.println(productid);
		int quantity=Integer.parseInt(request.getParameter("quan"));
		System.out.println(quantity);
		double price=Double.parseDouble(request.getParameter("pri"));
		System.out.println(price);
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
			Date orderDate = null;
			String dateinString=request.getParameter("orderdate");
			try {
				orderDate = sdf.parse(dateinString);
				System.out.println(orderDate);
				OrderDaoImpl orderdao=new OrderDaoImpl();
				Order order=new Order(user,productid,quantity,price,orderDate);
				int i=orderdao.orderproduct(order);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}					
	}
}
