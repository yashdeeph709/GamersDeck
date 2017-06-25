package com.gamersdeck.controllers;

import java.util.HashMap;

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
import com.gamersdeck.repository.UserRepository;


@CrossOrigin
@RestController
@RequestMapping("/gamersdeck/v1.0")
public class UserController {
	@Autowired
	UserRepository repository;

	@CrossOrigin(origins = "http://localhost:8080")
	@RequestMapping(value="/register", method=RequestMethod.POST,produces=MediaType.APPLICATION_JSON_VALUE)
	public  ResponseEntity<HashMap<String,Object>> register(@RequestBody User user) {
		HashMap<String, Object> map=new HashMap<String,Object>();
		HttpHeaders responseHeaders = new HttpHeaders();
		System.out.println("Hello"+user.toString());
		if(repository.findOne(user.getUsername())!=null){
			map.put("msg", "User already exist!");
			map.put("created",false);
			return new ResponseEntity<HashMap<String,Object>>(map,responseHeaders,HttpStatus.ACCEPTED);			
		}
		User userfromDb=repository.save(user);
		if(userfromDb!=null){
			map.put("created", true);
			map.put("msg", "Registration Successful!");
			return new ResponseEntity<HashMap<String,Object>>(map,responseHeaders,HttpStatus.ACCEPTED);
		}else{
			map.put("created",false);
			map.put("msg", "Internal Server Error!");
			return new ResponseEntity<HashMap<String,Object>>(map,responseHeaders,HttpStatus.ACCEPTED);
		}
	}
}
