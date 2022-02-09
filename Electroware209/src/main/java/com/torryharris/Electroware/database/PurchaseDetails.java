package com.torryharris.Electroware.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.torryharris.Electroware.model.MyOrders;

public class PurchaseDetails 
{
	public MyOrders payment(MyOrders mo) throws ClassNotFoundException, SQLException 
	{	
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd="root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		int i=st.executeUpdate("insert into CustomerOrders values('"+mo.getCardName()+"','"+mo.getCardNo()+"',"
		+mo.getPhone()+",'"+mo.getExpiryDate()+"','"+mo.getZipcode()+"')");
		return mo;
	}
}
