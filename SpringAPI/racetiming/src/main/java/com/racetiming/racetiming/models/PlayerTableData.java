package com.racetiming.racetiming.models;

public class PlayerTableData {

private String Name;
private String Surname;
private String City;
private String Country;
private String Sex; 
private String Team;

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getSurname() {
        return Surname;
    }

    public void setSurname(String surname) {
        Surname = surname;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        City = city;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String country) {
        Country = country;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String sex) {
        Sex = sex;
    }

    public String getTeam() {
        return Team;
    }

    public void setTeam(String team) {
        Team = team;
    }

    public PlayerTableData(String name, String surname, String city, String country, String sex, String team) {
        Name = name;
        Surname = surname;
        City = city;
        Country = country;
        Sex = sex;
        Team = team;
    }
}