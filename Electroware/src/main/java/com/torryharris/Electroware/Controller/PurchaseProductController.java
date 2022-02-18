package com.torryharris.Electroware.Controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.torryharris.Electroware.database.Products;
import com.torryharris.Electroware.database.PurchaseDetails;
import com.torryharris.Electroware.model.MyOrders;
import com.torryharris.Electroware.model.ProductDetails;

@Controller
@SessionAttributes("purchase")
public class PurchaseProductController 
{
		List<MyOrders> molist=new ArrayList<MyOrders>();
		@PostMapping("/payment")
		public ModelAndView purchase(@RequestParam("proName") String proName,
				@RequestParam("price") int price,
				@RequestParam("cardName") String cardName,@RequestParam("cardNo") long cardNo,@RequestParam("phone") long phone,
				@RequestParam("expiryDate") String expiryDate,@RequestParam("code") int code,@RequestParam("zipcode") int zipcode) throws ClassNotFoundException, SQLException
		{
				MyOrders mo=new MyOrders(proName,price,cardName,cardNo,phone,expiryDate,zipcode);
				PurchaseDetails pd=new PurchaseDetails();
				MyOrders i=pd.payment(mo);
				String str;
				ModelAndView mv=new ModelAndView();
				str="payment sucessfulll....";
				mv.setViewName("paymentsucess.jsp");
				mv.addObject("i",i);
				return mv;
		}
		
		@GetMapping("/myOrders")
		public ModelAndView myOrders() throws ClassNotFoundException, SQLException
		{
			PurchaseDetails pd=new PurchaseDetails();
			List<MyOrders> molist=pd.myOrders();
			ModelAndView mv=new ModelAndView();
			if(molist==null)
			{
				String str="No Orders Available......";
				mv.addObject("str",str);
				mv.setViewName("myOrders.jsp");
				return mv;
			}
			else if(molist!=null)
			{
				mv.addObject("molist",molist);
				mv.setViewName("myOrders.jsp");
				return mv;
			}	
			return mv;
		}
		
		@PostMapping("/addToCart")
		public ModelAndView addToCart(@RequestParam("proName") String proName,
				@RequestParam("proType") String proType,
				@RequestParam("price") int price,
				@RequestParam("stock") int stock,
				@RequestParam("desc") String desc) throws ClassNotFoundException, SQLException
		{
			ProductDetails pd=new ProductDetails(proName,proType,price,stock,desc);
			Products p=new Products();
			int i=p.addToCart(pd);
			ModelAndView mv=new ModelAndView();
			String str="added to cart....";
			mv.addObject("str",str);
			mv.setViewName("myCart.jsp");
			return mv;
		}
		
		@GetMapping("/myCart")
		public ModelAndView myCart() throws ClassNotFoundException, SQLException
		{
			PurchaseDetails pd=new PurchaseDetails();
			List<ProductDetails> molist=pd.myCart();
			ModelAndView mv=new ModelAndView();
			if(molist==null)
			{
				String str="No Orders Available......";
				mv.addObject("str",str);
				mv.setViewName("myCart.jsp");
				return mv;
			}
			else if(molist!=null)
			{
				mv.addObject("molist",molist);
				mv.setViewName("myCart.jsp");
				return mv;
			}
			return mv;
		}
		
		@PostMapping("/removeFromCart")
		public ModelAndView removeFromCart(@RequestParam("proName") String proName,
				@RequestParam("proType") String proType,
				@RequestParam("price") int price,
				@RequestParam("stock") int stock,
				@RequestParam("desc") String desc) throws ClassNotFoundException, SQLException
		{
			String proNames=proName;
			Products p=new Products();
			List<ProductDetails> i=p.removeFromCart(proNames);
			ModelAndView mv=new ModelAndView();
			if(i==null)
			{
				String str="Cart is Empty";
				mv.addObject("str",str);
				mv.setViewName("removeFromCart.jsp");
				return mv;
			}
			else if(i!=null)
			{
				mv.addObject("i",i);
				mv.setViewName("removeFromCart.jsp");
				return mv;
			}
			return mv;
		}
}
