package com.gamersdeck.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gamersdeck.services.AuthService;
import com.gamersdeck.services.GameService;
import com.gamersdeck.beans.*;

@CrossOrigin
@RestController
@RequestMapping("/gamersdeck/v1.0")
public class GameController {
	
	@Autowired
	GameService service;
	@Autowired 
	AuthService authService;
	
	@RequestMapping(value="/game", method=RequestMethod.GET,produces=MediaType.APPLICATION_JSON_VALUE)
	public  ResponseEntity<List<Game>> getTime(@RequestHeader String authToken) {
			HttpHeaders responseHeaders = new HttpHeaders();
			if(authService.authenticateRequest(authToken)){
				return new ResponseEntity<List<Game>>(service.getAllGames(),responseHeaders,HttpStatus.ACCEPTED);				
			}else{
				List list=new ArrayList<Game>();
				return new ResponseEntity<List<Game>>(list,responseHeaders,HttpStatus.UNAUTHORIZED);
			}
	}

}
