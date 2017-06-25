package com.gamersdeck.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamersdeck.beans.Game;
import com.gamersdeck.repository.GameRepository;

@Service
public class GameServiceImpl implements GameService {
	
	@Autowired
	GameRepository repository;

	public List<Game> getAllGames() {		
		return repository.findAll();
	}

}
