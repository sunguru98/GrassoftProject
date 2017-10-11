package com.gs.grassoftfront.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gs.grassoft.dao.CategoryDAO;
import com.gs.grassoft.model.CategoryCredentials;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;
	ModelAndView modelAndView;
	
	@RequestMapping("addCategory")
	public ModelAndView goToAddCategoryPage(){
		modelAndView=new ModelAndView("addcategory","categorymodel", new CategoryCredentials());
		modelAndView.addObject("allCats", categoryDAO.allCategory());
		//modelAndView.addObject("check", true);
		return modelAndView;
	}
	
	
	
	@RequestMapping("/categoryregister")
	public String registerUser(@Valid @ModelAttribute("categorymodel") CategoryCredentials categoryCredentials){
		if(categoryDAO.insertCategory(categoryCredentials)){
			return "success";
		}
		else{
			return "error";
		}
	}
	
	
	
	
	@RequestMapping("/deletecat")
	public String deleteCategory(@RequestParam("catid") long categoryId )
	{
		categoryDAO.deleteCategory(categoryId);
		return "redirect:/addCategory";
	}
	
	
	/*@RequestMapping("/editcat")
	public ModelAndView editCategory(@RequestParam("catid") long categoryId,@ModelAttribute("categorymodeledit") CategoryCredentials categoryCredentials )
	{
		
		ModelAndView modelAndView=new ModelAndView("addcategory");
		modelAndView.addObject("categorymodeledit", categoryDAO.singleCategory(categoryId));
		modelAndView.addObject("check", false);
		categoryDAO.deleteCategory(categoryId);
		return modelAndView;
	}
	*/
	
	
}
