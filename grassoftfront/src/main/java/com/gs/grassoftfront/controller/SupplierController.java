package com.gs.grassoftfront.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.grassoft.dao.SupplierDAO;
import com.gs.grassoft.model.SupplierCredentials;
@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("addSupplier")
	public ModelAndView goToAddSupplierPage(){
		ModelAndView modelAndView = new ModelAndView("addsupplier", "suppliermodel", new SupplierCredentials());
		modelAndView.addObject("allsupps", supplierDAO.allSuppliers());
		return modelAndView;
	}
	
	@RequestMapping("/supplierregister")
	public String registerUser(@Valid @ModelAttribute("suppliermodel") SupplierCredentials supplierCredentials){
		if(supplierDAO.insertSupplier(supplierCredentials)){
			return "success";
		}
		else{
			return "error";
		}
	}
	
}
