package com.racetiming.racetiming.controllers;

import java.util.List;

import com.racetiming.racetiming.models.Competition;
import com.racetiming.racetiming.models.PlayerCategory;
import com.racetiming.racetiming.repositories.CompetitionRepository;
import com.racetiming.racetiming.repositories.PlayerCategoryRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * CompetitionController
 */
@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class CompetitionController {

    @Autowired
    private CompetitionRepository competitionRepostiory;
    private PlayerCategoryRepository playerCategoryRepository;

    @GetMapping("/competitions")
    public Page<Competition> getAllCompetitions(){
        Page <Competition> allCompetitions=competitionRepostiory.findAll(PageRequest.of(0, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/competitions/{page}")
    public Page<Competition> getAllCompetitions(@PathVariable("page") int page){
        Page <Competition> allCompetitions=competitionRepostiory.findAll(PageRequest.of(page-1, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/competitiondetails/{id}")
    public Competition getCompetitionsDetails(@PathVariable("id") long id){
        return competitionRepostiory.findById(id);
    }

    
}