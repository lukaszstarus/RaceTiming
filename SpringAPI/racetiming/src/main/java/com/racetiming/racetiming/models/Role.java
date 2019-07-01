package com.racetiming.racetiming.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Role
 */
@Entity
public class Role {
@Id @GeneratedValue(strategy = GenerationType.AUTO)
private int Id;
private String name;

	public int getId() {
		return this.Id;
	}

	public void setId(int Id) {
		this.Id = Id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Role(String name) {
		this.name = name;
	}
	public Role() {
	}

    
}