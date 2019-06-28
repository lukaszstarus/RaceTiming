package com.racetiming.racetiming.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Categories
 */
@Entity
public class Category {
@Id @GeneratedValue(strategy = GenerationType.AUTO)
private long Id;
private String name;

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


	public Category(String name) {
		this.name = name;
	}


    
}