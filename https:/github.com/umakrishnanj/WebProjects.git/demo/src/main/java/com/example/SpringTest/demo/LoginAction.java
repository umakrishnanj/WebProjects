package com.example.SpringTest.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("uname")
public class LoginAction {
		
	  @RequestMapping(value = "login", method = RequestMethod.GET)
	    public String registration() {
		  	System.out.println("called 1234#..");
	        return "index";
	    }
	  
	  @RequestMapping(value = "welcome", method = RequestMethod.GET)
	    public String welcome() {
		  	System.out.println("called 1234#..");
	        return "welcome";
	    }
	  
	 
}



