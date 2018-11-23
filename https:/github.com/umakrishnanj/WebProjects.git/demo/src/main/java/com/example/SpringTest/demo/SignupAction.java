package com.example.SpringTest.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.SpringTest.demo.data.User;
import com.example.SpringTest.demo.data.UserRepository;

@Controller
public class SignupAction {
	
	@Autowired
	 UserRepository userRepo;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String registration() {
		System.out.println("called signup#..");
		return "Signup";
	}

	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String adduser(ModelMap model, @RequestParam String uname,String mail, String pass, String conpass){
		System.out.println("add user method called..");
		
		
		
		User user = new User();
		user.setName(uname);
		user.setPassword(pass);
		user.setConfirmPassword(conpass);
		user.setMail(mail);
		
		userRepo.save(user);
		System.out.println("user : " + user);
		model.put("user", uname);
		
		return "RegisterSuccess";
	}
	
}
