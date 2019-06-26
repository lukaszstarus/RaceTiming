package com.racetiming.racetiming.models;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonSetter;

/**
 * Competiton
 */
@Entity
public class Competition {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String name;
    private String place;
    private String dyscipline;
    private Date date;
    private String organizer;
    private Date deadlineDate;
    private String description;
    private String regUrl;
    private int playersLimit;
    private String resultsUrl;
	
	@ManyToMany(cascade = {CascadeType.MERGE, CascadeType.REFRESH})
	private List<Player> players = new ArrayList<Player>();
	@ManyToMany(cascade = {CascadeType.MERGE, CascadeType.REFRESH})
	private List<Category> categories = new ArrayList<Category>();

	public Competition() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getDyscipline() {
		return dyscipline;
	}

	public void setDyscipline(String dyscipline) {
		this.dyscipline = dyscipline;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getOrganizer() {
		return organizer;
	}

	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}

	public Date getDeadlineDate() {
		return deadlineDate;
	}

	public void setDeadlineDate(Date deadlineDate) {
		this.deadlineDate = deadlineDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRegUrl() {
		return regUrl;
	}

	public void setRegUrl(String regUrl) {
		this.regUrl = regUrl;
	}

	public int getPlayersLimit() {
		return playersLimit;
	}

	public void setPlayersLimit(int playersLimit) {
		this.playersLimit = playersLimit;
	}

	public String getResultsUrl() {
		return resultsUrl;
	}

	public void setResultsUrl(String resultsUrl) {
		this.resultsUrl = resultsUrl;
	}

	public Competition(String name, String place, String dyscipline, Date date, String organizer, Date deadlineDate,
			String description, String regUrl, int playersLimit, String resultsUrl) {
		this.name = name;
		this.place = place;
		this.dyscipline = dyscipline;
		this.date = date;
		this.organizer = organizer;
		this.deadlineDate = deadlineDate;
		this.description = description;
		this.regUrl = regUrl;
		this.playersLimit = playersLimit;
		this.resultsUrl = resultsUrl;
	}
	@JsonGetter
	public long getId() {
		return id;
	}
	@JsonSetter
	public void setId(long id) {
		this.id = id;
	}

	public List<Player> getPlayers() {
		return players;
	}

	public void setPlayers(List<Player> players) {
		this.players = players;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public Competition(String name, String place, String dyscipline, Date date, String organizer, Date deadlineDate,
			String description, String regUrl, int playersLimit, String resultsUrl,
			List<Category> categories) {
		this.name = name;
		this.place = place;
		this.dyscipline = dyscipline;
		this.date = date;
		this.organizer = organizer;
		this.deadlineDate = deadlineDate;
		this.description = description;
		this.regUrl = regUrl;
		this.playersLimit = playersLimit;
		this.resultsUrl = resultsUrl;
		this.categories = categories;
	}

	public Competition(String name, String place, String dyscipline, Date date, String organizer, Date deadlineDate,
			String description, String regUrl, int playersLimit, String resultsUrl, List<Player> players,
			List<Category> categories) {
		this.name = name;
		this.place = place;
		this.dyscipline = dyscipline;
		this.date = date;
		this.organizer = organizer;
		this.deadlineDate = deadlineDate;
		this.description = description;
		this.regUrl = regUrl;
		this.playersLimit = playersLimit;
		this.resultsUrl = resultsUrl;
		this.players = players;
		this.categories = categories;
	}

	    
}