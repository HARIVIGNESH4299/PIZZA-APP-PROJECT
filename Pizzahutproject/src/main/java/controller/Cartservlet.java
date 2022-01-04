package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pizza.dao.CartDaoImpl;
import com.pizza.model.Cart;
import com.pizza.model.Product;
import com.pizza.model.User;
@WebServlet("/cart")
/**
 * Servlet implementation class Cartservlet
 */
public class Cartservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cartservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		User userid=(User) session.getAttribute("user_id");
		String productname=(String) request.getAttribute("name");
		Product productid=(Product) session.getAttribute("productid");
		int quantity=Integer.parseInt(request.getParameter("qty"));
		Double price=Double.parseDouble(request.getParameter("price").toString());
		Cart cart=new Cart(userid,productid,quantity,price);
		CartDaoImpl dao=new CartDaoImpl();
		dao.insertCart(cart);
	}

}
