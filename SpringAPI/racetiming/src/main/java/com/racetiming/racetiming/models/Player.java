package com.racetiming.racetiming.models;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Player
 */
@Entity
public class Player {
@Id @GeneratedValue(strategy = GenerationType.AUTO)
private long id;
private String name;
private String surname;
private String city;
private Date birthDate;
private String country;
private String sex; 
private String phone;
private String team;
private String license;


	public long getId() {
		return this.id;
	}

	public void setId(long Id) {
		this.id = Id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String Name) {
		this.name = Name;
	}

	public String getSurname() {
		return this.surname;
	}

	public void setSurname(String Surname) {
		this.surname = Surname;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String City) {
		this.city = City;
	}

	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date BirthDate) {
		this.birthDate = BirthDate;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String Country) {
		this.country = Country;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String Sex) {
		this.sex = Sex;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String Phone) {
		this.phone = Phone;
	}

	public String getTeam() {
		return this.team;
	}

	public void setTeam(String Team) {
		this.team = Team;
	}

	public String getLicense() {
		return this.license;
	}

	public void setLicense(String License) {
		this.license = License;
	}

	public Player() {
	}

	public Player(String name, String surname, String city, Date birthDate, String country, String sex, String phone,
			String team, String license) {
		this.name = name;
		this.surname = surname;
		this.city = city;
		this.birthDate = birthDate;
		this.country = country;
		this.sex = sex;
		this.phone = phone;
		this.team = team;
		this.license = license;
	}

	public Player(String name, String surname, String city, String country, String sex, String team) {
		this.name = name;
		this.surname = surname;
		this.city = city;
		this.country = country;
		this.sex = sex;
		this.team = team;
	}


}