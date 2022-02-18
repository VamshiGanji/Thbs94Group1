package com.torryharris.Electroware.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.torryharris.Electroware.model.ProductDetails;

public class Products {

	public int addProducts(ProductDetails pd) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd=	"root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		int rs=st.executeUpdate("insert into products values('"+pd.getProductName()+"','"+pd.getProductType()+
		"',"+pd.getPrice()+","+pd.getStock()+",'"+pd.getDescription()+"')");
		return 1;
	}
	
	public List<ProductDetails> viewProducts() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd=	"root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from products");
		List<ProductDetails> prolist=new ArrayList<ProductDetails>();
		String proName,proType,desc;
		int price,stock;
		while(rs.next())
		{
			proName=rs.getString("ProductName");
			proType=rs.getString("ProductType");
			price=rs.getInt("Price");
			stock=rs.getInt("Stock");
			desc=rs.getString("Description");
			ProductDetails pd=new ProductDetails(proName,proType,price,stock,desc);
			prolist.add(pd);
		}
		return prolist;
	}
	
	
	public int addToCart(ProductDetails pd) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd=	"root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		int rs=st.executeUpdate("insert into customercart values('"+pd.getProductName()+"','"+pd.getProductType()+
				"',"+pd.getPrice()+","+pd.getStock()+",'"+pd.getDescription()+"')");
		return 1;
	}
	
	public List<ProductDetails> removeFromCart(String str) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd=	"root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		List<ProductDetails> prolist=new ArrayList<ProductDetails>();
		ResultSet rs=st.executeQuery("select *from customercart");
		while(rs.next())
		{
			String pro=rs.getString("ProductName");
			if(pro.equals(str))
			{
				int i=st.executeUpdate("delete from customercart where ProductName='"+pro+"'");
			}
			rs=st.executeQuery("select *from customercart");
			while(rs.next())
			{
				String proName=rs.getString("ProductName");
				String proType=rs.getString("ProductType");
				int price=rs.getInt("Price");
				int stock=rs.getInt("Stock");
				String desc=rs.getString("Description");
				ProductDetails pd=new ProductDetails(proName,proType,price,stock,desc);
				prolist.add(pd);
			}
		}
		if(prolist!=null)
			return prolist;
		return null;
	}
}
	