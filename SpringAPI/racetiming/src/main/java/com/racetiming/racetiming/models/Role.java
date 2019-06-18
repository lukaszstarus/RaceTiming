package com.racetiming.racetiming.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

/**
 * Role
 */
@Entity
public class Role {
@Id @GeneratedValue(strategy = GenerationType.AUTO)
private long Id;
private String name;

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

    
}