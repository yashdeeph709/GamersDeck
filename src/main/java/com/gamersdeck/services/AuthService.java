package com.gamersdeck.services;

import com.gamersdeck.beans.User;

public interface AuthService {
	public String login(User user); 
	public Boolean authenticateRequest(String authToken);
}
