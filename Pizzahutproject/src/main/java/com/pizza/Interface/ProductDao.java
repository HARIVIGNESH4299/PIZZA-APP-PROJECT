package com.pizza.Interface;

import java.util.List;

import com.pizza.model.Product;

public interface ProductDao {

	public List<Product> showProduct();
	public  int insertproduct(Product products);
	public  int updated(String productname, String size,Double price,int productid);
	public int delete(int deleteid);
	public  int findProductId(Product product);
	public  Product findProduct(String proname,String prosize);
	public Product findid(int id);
}
