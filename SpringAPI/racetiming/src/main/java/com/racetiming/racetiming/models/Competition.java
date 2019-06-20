package com.racetiming.racetiming.models;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Competiton
 */
@Entity
public class Competition {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private long Id;
    private String Name;
    private String Place;
    private String Dyscipline;
    private Date Date;
    private String Organizer;
    private Date DeadlineDate;
    private String Description;
    private String RegUrl;
    private int PlayersLimit;
    private String ResultsUrl;
	
	public Competition() {
	}
	
	public long getId() {
		return this.Id;
	}

	public void setId(long Id) {
		this.Id = Id;
	}

	public String getName() {
		return this.Name;
	}

	public void setName(String Name) {
		this.Name = Name;
	}

	public String getPlace() {
		return this.Place;
	}

	public void setPlace(String Place) {
		this.Place = Place;
	}

	public String getDyscipline() {
		return this.Dyscipline;
	}

	public void setDyscipline(String Dyscipline) {
		this.Dyscipline = Dyscipline;
	}

	public Date getDate() {
		return this.Date;
	}

	public void setDate(Date Date) {
		this.Date = Date;
	}

	public String getOrganizer() {
		return this.Organizer;
	}

	public void setOrganizer(String Organizer) {
		this.Organizer = Organizer;
	}

	public Date getDeadlineDate() {
		return this.DeadlineDate;
	}

	public void setDeadlineDate(Date DeadlineDate) {
		this.DeadlineDate = DeadlineDate;
	}

	public String getDescription() {
		return this.Description;
	}

	public void setDescription(String Description) {
		this.Description = Description;
	}

	public String getRegUrl() {
		return this.RegUrl;
	}

	public void setRegUrl(String RegUrl) {
		this.RegUrl = RegUrl;
	}

	public int getPlayersLimit() {
		return this.PlayersLimit;
	}

	public void setPlayersLimit(int PlayersLimit) {
		this.PlayersLimit = PlayersLimit;
	}

	public String getResultsUrl() {
		return this.ResultsUrl;
	}

	public void setResultsUrl(String ResultsUrl) {
		this.ResultsUrl = ResultsUrl;
	}

	public Competition(String name, String place, String dyscipline, Date date, String organizer,
			Date deadlineDate, String description, String regUrl, int playersLimit, String resultsUrl) {
		Name = name;
		Place = place;
		Dyscipline = dyscipline;
		Date = date;
		Organizer = organizer;
		DeadlineDate = deadlineDate;
		Description = description;
		RegUrl = regUrl;
		PlayersLimit = playersLimit;
		ResultsUrl = resultsUrl;
	}

    
}