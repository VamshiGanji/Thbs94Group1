package com.torryharris.Electroware.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.torryharris.Electroware.database.AddProducts;
import com.torryharris.Electroware.database.Products;
import com.torryharris.Electroware.model.ProductDetails;
@MultipartConfig
@Controller
public class ProductController {
	List<ProductDetails> proList=new ArrayList<ProductDetails>();
	
	//@PostMapping("/addProducts")
	@RequestMapping(value = "/addProducts", method = RequestMethod.POST)
	public ModelAndView addProducts(@RequestParam(required=false,name="productName") String productName,
			@RequestParam(required=false,name="productType") String productType,
			@RequestParam(required=false,name="price") Integer price,
			//@RequestParam(required=false,name="file") MultipartFile file,
			@RequestParam(required=false, name="stock") Integer stock,
			@RequestParam(required=false, name="description") String description) throws ClassNotFoundException, SQLException
	{
		ProductDetails pd=new ProductDetails(productName,productType,price,stock,description);
		Products p=new Products();
		int i=p.addProducts(pd);
		ModelAndView mv=new ModelAndView();
		String str="Product Added Sucessfully.....";
		mv.addObject("str",str);
		mv.setViewName("addProducts.jsp");
		return mv;
	
	}
	
	@GetMapping("viewProducts")
	public ModelAndView viewProducts() throws ClassNotFoundException, SQLException
	{
		Products pd=new Products();
		List<ProductDetails> prolist=pd.viewProducts();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewproducts.jsp");
		mv.addObject("prolist",prolist);
		return mv;
	}
	
	@GetMapping("userproducts")
	public ModelAndView userProducts() throws ClassNotFoundException, SQLException
	{
		Products pd=new Products();
		List<ProductDetails> prolist=pd.viewProducts();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userproducts.jsp");
		mv.addObject("prolist",prolist);
		return mv;
	}
	
	
	@RequestMapping(value = "/uploadMultiFile", method = RequestMethod.POST)
	public String submit(@RequestParam("file") MultipartFile file, ModelMap modelMap) {
	    modelMap.addAttribute("file", file);
	    return "fileUploadView";
	}

}
