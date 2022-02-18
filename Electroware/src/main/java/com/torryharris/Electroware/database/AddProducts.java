package com.torryharris.Electroware.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.torryharris.Electroware.model.ProductDetails;

public class AddProducts {
	
	public String addProducts(ProductDetails pd) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd=	"root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		int rs=st.executeUpdate("insert into products values('"+pd.getProductName()+"','"+pd.getProductType()+
		"',"+pd.getPrice()+","+pd.getStock()+",'"+pd.getDescription()+"')");
		return pd.getProductName();
	}
}
