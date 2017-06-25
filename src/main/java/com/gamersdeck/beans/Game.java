package com.gamersdeck.beans;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="game")
public class Game {
	@Id
	String title;
	String platform;
	Double score;
	String genre; 
	char editors_choice;
	
	public Game(String title, String platform, Double score, String genre, char editors_choice) {
		super();
		this.title = title;
		this.platform = platform;
		this.score = score;
		this.genre = genre;
		this.editors_choice = editors_choice;
	}
	public Game() {
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public char isEditors_choice() {
		return editors_choice;
	}
	public void setEditors_choice(char editors_choice) {
		this.editors_choice = editors_choice;
	}
}
