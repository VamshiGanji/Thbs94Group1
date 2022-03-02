package com.torryharris.Electroware.Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.torryharris.Electroware.database.InsertUserData;
import com.torryharris.Electroware.database.Products;
import com.torryharris.Electroware.database.PurchaseDetails;
import com.torryharris.Electroware.model.MyOrders;
import com.torryharris.Electroware.model.ProductDetails;
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
		Products pd=new Products();
		InsertUserData iud=new InsertUserData();
		String i=iud.getUser(userName,password);
		ModelAndView mv=new ModelAndView();
		String str,s="admin";
		if(i==null)
		{
			str="Invalid Credentials";
			mv.setViewName("userdoesnotexist.jsp");
			mv.addObject("str",str);
			return mv;		
		}
		else if(i.equals(s))
		{
			PurchaseDetails purde=new PurchaseDetails();
			List<MyOrders> molist=purde.myOrders();
			if(molist==null)
			{
				String s1="No Orders Available......";
				mv.addObject("str",s1);
				mv.setViewName("AdminAccount.jsp");
				return mv;
			}
			else if(molist!=null)
			{
				mv.addObject("molist",molist);
				mv.setViewName("AdminAccount.jsp");
				return mv;
			}	
			return mv;
		}
		
		List<ProductDetails> prolist=pd.viewProducts();
		if(prolist!=null)
		{
			mv.setViewName("buyproducts.jsp");
			mv.addObject("prolist",prolist);	
			return mv;
		}
		String e="No Products Available....";
		mv.setViewName("buyproducts.jsp");
		mv.addObject("e",e);	
		return mv;
	}
	
	@GetMapping("buyproducts")
	public ModelAndView home() throws ClassNotFoundException, SQLException
	{
		Products pd=new Products();
		List<ProductDetails> prolist=pd.viewProducts();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("buyproducts.jsp");
		mv.addObject("prolist",prolist);	
		return mv;
	}
}
