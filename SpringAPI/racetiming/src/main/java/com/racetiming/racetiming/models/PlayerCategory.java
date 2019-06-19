package com.racetiming.racetiming.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * PlayerCategory
 */
@Entity
public class PlayerCategory {
@Id @GeneratedValue(strategy = GenerationType.AUTO)
private long Id;
@ManyToOne()
private Player player= new Player();
@ManyToOne
private Competition competitions= new Competition();
@ManyToOne
private Category categories= new Category();

    public long getId() {
        return Id;
    }

    public void setId(long id) {
        Id = id;
    }

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        this.player = player;
    }

    public Competition getCompetitions() {
        return competitions;
    }

    public void setCompetitions(Competition competitions) {
        this.competitions = competitions;
    }

    public Category getCategories() {
        return categories;
    }

    public void setCategories(Category categories) {
        this.categories = categories;
    }

    public PlayerCategory(Player player, Competition competitions, Category categories) {
        this.player = player;
        this.competitions = competitions;
        this.categories = categories;
    }
    public PlayerCategory() {}


   
}