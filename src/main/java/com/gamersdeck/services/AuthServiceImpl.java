package com.gamersdeck.services;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamersdeck.beans.User;
import com.gamersdeck.repository.UserRepository;

@Service
public class AuthServiceImpl implements AuthService {

	@Autowired
	UserRepository repository;
	
	public String login(User user) {
		User userfromDb=repository.findUserByUsername(user.getUsername());
		if(userfromDb.getPassword().equals(user.getPassword())){
			String plainClientCredentials=user.getUsername()+":"+user.getPassword();
			String base64ClientCredentials = new String(Base64.encodeBase64(plainClientCredentials.getBytes()));
			return base64ClientCredentials;
		}else{
			return "";
		}
	}

	public Boolean authenticateRequest(String authToken) {
		String plainClientCredentials = new String(Base64.decodeBase64(authToken.getBytes()));
		System.out.println(plainClientCredentials);
		String[] credentials = plainClientCredentials.split(":");
		User userfromDb=repository.findUserByUsername(credentials[0]);
		if(userfromDb==null){
			return false;
		}
		if(userfromDb.getPassword().equals(credentials[1])){
			return true;
		}else{
			return false;
		}
	}

}
