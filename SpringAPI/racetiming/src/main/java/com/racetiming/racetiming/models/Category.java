package com.racetiming.racetiming.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

/**
 * Categories
 */
@Entity
public class Category {
@Id @GeneratedValue(strategy = GenerationType.AUTO)
private long Id;
private String name;

@ManyToMany(cascade = {CascadeType.MERGE, CascadeType.REFRESH})
private List<Competition> competitions = new ArrayList<Competition>();

	public Category() {}

	public long getId() {
		return this.Id;
	}

	public void setId(long Id) {
		this.Id = Id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Competition> getCompetitions() {
		return this.competitions;
	}

	public void setPlayers(List<Competition> competitions) {
		this.competitions = competitions;
	}

	public Category(String name, List<Competition> competitions) {
		this.name = name;
		this.competitions = competitions;
	}


    
}