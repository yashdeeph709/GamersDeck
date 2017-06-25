package com.gamersdeck.controllers;

import java.util.HashMap;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gamersdeck.beans.User;
import com.gamersdeck.services.AuthService;

@CrossOrigin
@RestController
@RequestMapping("/gamersdeck/v1.0")
public class AuthenticationController {
	@Autowired
	AuthService service;
	
	@RequestMapping(value="/login", method=RequestMethod.POST,produces=MediaType.APPLICATION_JSON_VALUE)
	public  ResponseEntity<HashMap<String,Object>> login(@RequestBody User user) {
		HashMap<String,Object> map=new HashMap<String,Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		String authToken=service.login(user);
		if(!authToken.equals("")){
			map.put("authenticated", true);
			map.put("msg","Login Successful!");
			map.put("authToken",authToken);
			return new ResponseEntity<HashMap<String,Object>>(map,responseHeaders,HttpStatus.ACCEPTED);					
		}else{
			map.put("authenticated",false);
			map.put("msg","Invalid username password!");
			map.put("authToken",null);
			return new ResponseEntity<HashMap<String,Object>>(map,responseHeaders,HttpStatus.ACCEPTED);
		}
	}
}
