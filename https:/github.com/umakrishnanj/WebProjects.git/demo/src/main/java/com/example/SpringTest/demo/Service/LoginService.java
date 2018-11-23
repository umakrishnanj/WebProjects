package com.example.SpringTest.demo.Service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {

	
	public boolean validateUser(String user,String password){
		try {
			System.out.println("validate user method called for user : " + user);
			if(user.equals("nms") && password.equals("nms")){
				return true;
			}
			else
				return false;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
}
