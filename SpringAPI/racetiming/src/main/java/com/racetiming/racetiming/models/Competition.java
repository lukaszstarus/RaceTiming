package com.racetiming.racetiming.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.joda.time.DateTime;

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
    private DateTime Date;
    private String Organizer;
    private DateTime DeadlineDate;
    private String Description;
    private String RegUrl;
    private int PlayersLimit;
    private String ResultsUrl;

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

	public DateTime getDate() {
		return this.Date;
	}

	public void setDate(DateTime Date) {
		this.Date = Date;
	}

	public String getOrganizer() {
		return this.Organizer;
	}

	public void setOrganizer(String Organizer) {
		this.Organizer = Organizer;
	}

	public DateTime getDeadlineDate() {
		return this.DeadlineDate;
	}

	public void setDeadlineDate(DateTime DeadlineDate) {
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

    
}