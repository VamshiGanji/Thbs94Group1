package com.torryharris.Electroware.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.torryharris.Electroware.model.*;
public class InsertUserData 
{

	public String insertData(User user) throws ClassNotFoundException, SQLException 
	{	
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd=	"root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select UserName from mobile_mart_customers");
		while(rs.next())
		{
			String users=rs.getString("UserName");
			if(users.equals(user.getUserName()))
			{
				return null;
			}	
		}
		int i=st.executeUpdate("insert into mobile_mart_customers values('"+user.getFirstName()+"','"+user.getLastName()+"',"
		+user.getPhone()+",'"+user.getUserName()+"','"+user.getPassword()+"','"+user.getGender()+"','null','"
				+user.getDateOfBirth()+"','"+user.getAddress()+"')");
		return user.getUserName();
	}
	
	public String getUser(String userName,String password) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd="root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from mobile_mart_customers");
		while(rs.next())
		{
			String user=rs.getString("UserName");
			String psd=rs.getString("Password");
			String role=rs.getString("Role");
			String str="admin";
			if(user.equals(userName)&&psd.equals(password))
			{
				if(role.equals(str))
					return role;
				else 
					return user;
			}
		}
		return null;
	}
	public boolean changePassword(String userName,String password) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/mobilemart";
		String name="root";
		String pwd="root";
		Connection con=DriverManager.getConnection(url,name,pwd);
		Statement st=con.createStatement();
		int rs=st.executeUpdate("update mobile_mart_customers set password='"+password+"' WHERE UserName='"+userName+"'");
		if(rs==1)
		{
			return true;
		}
		return false;
	}
}

