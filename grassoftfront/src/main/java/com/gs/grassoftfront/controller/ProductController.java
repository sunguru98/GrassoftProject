package com.gs.grassoftfront.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.grassoft.dao.ProductDao;
import com.gs.grassoft.model.ProductCredentials;



@Controller
public class ProductController {
	@Autowired
	ProductDao productDAO;
	
	
	@RequestMapping("addProduct")
	public ModelAndView goToAddProductPage(){
		ModelAndView modelAndView= new ModelAndView("addproduct", "productmodel", new ProductCredentials());
		modelAndView.addObject("allprods",productDAO.allProducts());
		return modelAndView;
	}
	
	@RequestMapping("/productregister")
	public String registerProduct( @ModelAttribute("productmodel") ProductCredentials productCredentials){
		if (productDAO.insertProduct(productCredentials)){
			return "success";
		}
		
		return "error";
	}
}
