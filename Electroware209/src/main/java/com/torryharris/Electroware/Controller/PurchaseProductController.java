package com.torryharris.Electroware.Controller;

import java.sql.SQLException;
import java.util.ArrayList;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.torryharris.Electroware.database.PurchaseDetails;
import com.torryharris.Electroware.model.MyOrders;

@Controller
@SessionAttributes("purchase")
public class PurchaseProductController {

		@PostMapping("/payment")
		public ModelAndView purchase(@RequestParam("cardName") String cardName,@RequestParam("cardNo") long cardNo,@RequestParam("phone") long phone,
				@RequestParam("expiryDate") String expiryDate,@RequestParam("code") int code,@RequestParam("zipcode") int zipcode) throws ClassNotFoundException, SQLException
		{
			MyOrders mo=new MyOrders(cardName,cardNo,phone,expiryDate,code,zipcode);
			PurchaseDetails pd=new PurchaseDetails();
			MyOrders i=pd.payment(mo);
			String str;
			ModelAndView mv=new ModelAndView();
				str="payment sucessfulll....";
				mv.setViewName("paymentsucess.jsp");
				mv.addObject("i",i);
				return mv;
		}
	}
