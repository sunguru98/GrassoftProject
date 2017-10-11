package com.gs.grassoftfront.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gs.grassoft.dao.UserDAO;
import com.gs.grassoft.model.UserCredentials;

@Controller // to change the .java file as a controller
public class UserController {
	// same as the sessionFactory procedure
	@Autowired
	UserDAO userDAO; // instead of creating object for DAOImpl we create the DAO
						// object for loose coupled

	@RequestMapping("/signup")
	public ModelAndView gotoSignupPage() {

		// ModelAndView is necessary for form design .. if you want to pass the
		// data to the model..
		// so basically this ModelAndView allows the user to pass the data from
		// the webpage to the model class variables ...

		/*
		 * in creating modelAndView object the constructor has two types ... for
		 * form page(user based detail updation) we need to pass three
		 * parameters ..
		 * 
		 * those three parameters are 1.the page name 2. the model attribute
		 * which we name (here usermodel)
		 * 
		 * why we use model attribute ??? model attribute acts like an adapter
		 * to fetch the datas fronm the website .. and it transfers those data
		 * to the model class
		 * 
		 * 3. the object of the model class as anonymous
		 * 
		 * for a automated form page like cart and the products page we only
		 * need one parameter and that is the page name of the respected page
		 */

		return new ModelAndView("signup", "usermodel", new UserCredentials());

	}
	// here we have introduced a new function called regisTerUSer for completing
		// the step of adding the user to the database ...
		// here is the parameter is given as (@ModelAttribute("modelAttribute name")
		// the object of the model class)
		// dont use commas to differentiate the parameters here...
	@RequestMapping( "/userregister")
	
	public String registerUser(@Valid @ModelAttribute("usermodel") UserCredentials userCredentials,
			BindingResult bindingResult) {
		if (userCredentials.isTermsAgree()) {
			if (userDAO.insertUser(userCredentials))
			// this condition allows us to check whether the database accepted
			// the datas of the user typed in the webpage or not !!!!
			{
				return "signupsuccess";
			} else {

				
				return "error";

			}
		} else {

			return "error";

		}

	}
}
