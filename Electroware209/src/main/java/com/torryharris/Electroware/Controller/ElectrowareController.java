package com.torryharris.Electroware.Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.torryharris.Electroware.database.InsertUserData;
import com.torryharris.Electroware.model.User;

@Controller
public class ElectrowareController 
{
	@PostMapping("/register")
	public ModelAndView register(@RequestParam("firstName") String firstName,@RequestParam("lastName") String lastName,@RequestParam("phone") long phone,
			@RequestParam("userName") String userName,@RequestParam("password") String password,@RequestParam("confirmPassword") String confirmPassword,
			@RequestParam("gender") String gender,@RequestParam("dob") String dob,@RequestParam("address") String address) throws ClassNotFoundException, SQLException
	{
		User user=new User(firstName,lastName,phone,userName,password,gender,dob,address);
		InsertUserData iud=new InsertUserData();
		String i=iud.insertData(user);
		ModelAndView mv=new ModelAndView();
		if(i==null)
		{
			i="email id already exist";
			mv.setViewName("useralreadyexist.jsp");
			mv.addObject("i",i);
			return mv;
		}
		else
		{
			i="registration sucesfully please login.....";
			mv.setViewName("newlogin.jsp");
			mv.addObject("i",i);
			return mv;
		}
	}
	
	@PostMapping("/login")
	public ModelAndView register(@RequestParam("userName") String userName,@RequestParam("password") String password) throws ClassNotFoundException, SQLException
	{
		InsertUserData iud=new InsertUserData();
		String i=iud.getUser(userName,password);
		ModelAndView mv=new ModelAndView();
		if(i!=null)
		{
			mv.setViewName("userhomepage.jsp");
			mv.addObject("i",i);
			return mv;
		}
		else if(i==null)
		{
			i="invalid credentials";
			mv.setViewName("userdoesnotexist.jsp");
			mv.addObject("i",i);
			return mv;
		}
		return mv;
	}
	@PostMapping("/changePassword")
	public ModelAndView changePassword(@RequestParam("userName") String userName,@RequestParam("password") String password) throws ClassNotFoundException, SQLException
	{
		InsertUserData iud=new InsertUserData();
		boolean i=iud.changePassword(userName,password);
		ModelAndView mv=new ModelAndView();
		if(i)
		{
			mv.setViewName("userpass.html");
			mv.addObject("password",password);
			return mv;
		}
		else if(!i)
		{
			mv.setViewName("changepas.html");
			mv.addObject("password",password);
			return mv;
		}
		return mv;
	} 
}
