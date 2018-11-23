package com.example.SpringTest.demo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.SpringTest.demo.Service.LoginService;

@RestController
public class LoginAuthRestController {
	   @Autowired
	   LoginService login;
	
	  @RequestMapping(value="loginval", method=RequestMethod.POST)
	  public Map<String,String> showWelcomePage(@RequestParam String uname, @RequestParam String pass){
		 System.out.println("submit called.." +"username : " +uname + " password : " + pass);
		 boolean validateUser = login.validateUser(uname, pass);
		 Map<String,String> response = new HashMap<>();
		 response.put("userName", uname);
		 response.put("pass", pass);
		 
		 System.out.println("validate user.." + validateUser);
		 if(validateUser)
			 response.put("status", "success");
		 else
			 response.put("status", "failed");
		 
		 return response;
		 
			 
	  }

}
