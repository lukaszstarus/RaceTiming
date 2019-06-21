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
import javax.persistence.OneToOne;

/**
 * Player
 */
@Entity
public class Player {
@Id @GeneratedValue(strategy = GenerationType.AUTO)
private long Id;
private String Name;
private String Surname;
private String City;
private Date BirthDate;
private String Country;
private String Sex; 
private String Phone;
private String Team;
private String License;

@OneToOne
private Login login;

@ManyToMany(cascade = {CascadeType.MERGE, CascadeType.REFRESH})
private List<Competition> competitions = new ArrayList<Competition>();
	public Player() {}
	public List<Competition> getCompetitions() {
		return this.competitions;
	}

	public void setCompetitions(List<Competition> competitions) {
		this.competitions = competitions;
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

	public String getSurname() {
		return this.Surname;
	}

	public void setSurname(String Surname) {
		this.Surname = Surname;
	}

	public String getCity() {
		return this.City;
	}

	public void setCity(String City) {
		this.City = City;
	}

	public Date getBirthDate() {
		return this.BirthDate;
	}

	public void setBirthDate(Date BirthDate) {
		this.BirthDate = BirthDate;
	}

	public String getCountry() {
		return this.Country;
	}

	public void setCountry(String Country) {
		this.Country = Country;
	}

	public String getSex() {
		return this.Sex;
	}

	public void setSex(String Sex) {
		this.Sex = Sex;
	}

	public String getPhone() {
		return this.Phone;
	}

	public void setPhone(String Phone) {
		this.Phone = Phone;
	}

	public String getTeam() {
		return this.Team;
	}

	public void setTeam(String Team) {
		this.Team = Team;
	}

	public String getLicense() {
		return this.License;
	}

	public void setLicense(String License) {
		this.License = License;
	}

	public Player(String name, String surname, String city, Date birthDate, String country, String sex,
			String phone, String team, String license, List<Competition> competitions) {
		Name = name;
		Surname = surname;
		City = city;
		BirthDate = birthDate;
		Country = country;
		Sex = sex;
		Phone = phone;
		Team = team;
		License = license;
		this.competitions = competitions;
	}

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public Player(String name, String surname, String city, Date birthDate, String country, String sex, String phone,
			String team, String license, Login login, List<Competition> competitions) {
		Name = name;
		Surname = surname;
		City = city;
		BirthDate = birthDate;
		Country = country;
		Sex = sex;
		Phone = phone;
		Team = team;
		License = license;
		this.login = login;
		this.competitions = competitions;
	}

}