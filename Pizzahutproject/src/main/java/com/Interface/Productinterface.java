package com.Interface;

import java.util.List;

import com.model.Product;

public interface Productinterface {

	public List<Product> showProduct();
	public  int insertproduct(Product products);
	public  int updated(String productname, String size,Double price,int productid);
	public int delete(int deleteid);
	public  int findProductId(Product product);
	public  Product findProduct(String proname,String prosize);
	public Product findid(int id);
}
