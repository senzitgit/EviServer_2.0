package com.senzit.evidencer.server.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.senzit.evidencer.server.service.AuthService;
import com.senzit.evidencer.server.subservice.JsonParser;

@RestController
public class LoginController {
	
	static Logger log = Logger.getLogger(LoginController.class.getName());
	
	@Autowired
	private AuthService authService;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession sessionObj,HttpServletRequest request,HttpServletResponse response,
			@RequestParam("userName") String userName,@RequestParam("password") String password){
		
		Byte resultCode=0;
		String message="";
		HashMap<String,Object> result=new HashMap<String,Object>();
		///////////////////////////
		log.debug("login");
		log.debug("Username:"+userName);
		log.debug(password);
		log.debug("IPAddress" + request.getRemoteAddr());
		response.addHeader("Access-Control-Allow-Origin", "*");
		////////////////////////////////////////
		
		String ipAddress=null;
		ipAddress = request.getHeader("X-FORWARDED-FOR");   // proxy
		if(ipAddress==null)
		{
		    ipAddress = request.getRemoteAddr();
		}
		System.out.println("IP Address: "+ipAddress);
		
		
		
		//////////////////////////
		try {
			if(authService.authenticate(userName, password)){
				
				HashMap<String,Object> temp=new HashMap<String,Object>();
				temp=authService.getLoginResults(userName);
				if(temp==null)
					message="Your account has not been approved yet.";
				else{
					
					result=temp;
					if((byte)result.get("userType")==0)
						sessionObj.setAttribute("admin", true);
					else sessionObj.setAttribute("admin", false);
					sessionObj.setAttribute("userName", userName);
					message="Success";
					resultCode=1;
				}
			}
			else
				message="Username and password doesn't match! Please try again.";
		} catch (Exception e) {
			
			e.printStackTrace();
			message = "Couldn't establish connection with database. Check server configuration!";
			//message="Server Exception: "+e.getCause();
			//message="Server Exception: "+e.getMessage();
			resultCode=2;
		}		
		JsonParser<String, HashMap<String,Object>> jsonResponse = new JsonParser<String, HashMap<String,Object>>("login",resultCode,message,"UserLoginResult",result);
		return jsonResponse.JsonResponseText();
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpSession sessionObj,HttpServletResponse response){
		
		Byte resultCode=0;
		String message="";
		String result="";
		
		String userName=(String)sessionObj.getAttribute("userName");
		///////////////////////
		log.debug("logout");
		log.debug("Username:"+userName);
		response.addHeader("Access-Control-Allow-Origin", "*");
		//////////////////////
		if(userName==null)
			message="Your session has been expired! Please login.";
		else{
			
			sessionObj.removeAttribute("userName");
			sessionObj.invalidate();
			resultCode=1;
			message="Success";
		}
		
		JsonParser<String, String> jsonResponse = new JsonParser<String, String>("logout",resultCode,message,"LogoutResult",result);
		return jsonResponse.JsonResponseText();		
	}

}
