package com.torryharris.Electroware.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.torryharris.Electroware.model.MyOrders;
import com.torryharris.Electroware.model.ProductDetails;

public class PurchaseDetails 
{

	List<MyOrders> molist=new ArrayList<MyOrders>();
	public MyOrders payment(MyOrders mo) throws ClassNotFoundException, SQLException 
	{	
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd="root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		int i=st.executeUpdate("insert into CustomerOrders values('"+mo.getProName()+"',"
		+mo.getPrice()+",'"+mo.getCardName()+"','"+mo.getCardNo()+"',"
		+mo.getPhone()+",'"+mo.getExpiryDate()+"','"+mo.getZipcode()+"')");
		return mo;
	}

	public List<MyOrders> myOrders() throws SQLException, ClassNotFoundException
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd="root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from customerorders");
		while(rs.next())
		{
			String proName=rs.getString("ProductName");
			int price=rs.getInt("price");
			String cardName=rs.getString("CardName");
			long cardNo=rs.getInt("CardNo");
			long phone=rs.getInt("phone");
			String expiryDate=rs.getString("ExpiryDate");
			int zipCode=rs.getInt("ZipCode");
			MyOrders mo=new MyOrders(proName,price,cardName,cardNo,phone,expiryDate,zipCode);
			molist.add(mo);
		}
		return molist;
	}
	
	public List<ProductDetails> myCart() throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd="root";
		List<ProductDetails> molist=new ArrayList<ProductDetails>();
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from customercart");
		
		while(rs.next())
		{
			String proName=rs.getString("ProductName");
			String proType=rs.getString("ProductType");
			int price=rs.getInt("price");
			int stock=rs.getInt("stock");
			String desc=rs.getString("Description");
			ProductDetails pd=new ProductDetails(proName,proType,price,stock,desc);
			molist.add(pd);
		}
		return molist;
	}
}

