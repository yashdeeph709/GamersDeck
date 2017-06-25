package com.gamersdeck.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.gamersdeck.beans.*;


public interface GameRepository extends CrudRepository<Game, String> {
	public List<Game> findAll();
}
