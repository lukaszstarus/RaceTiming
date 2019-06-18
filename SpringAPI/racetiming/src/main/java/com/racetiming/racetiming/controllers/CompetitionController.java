package com.racetiming.racetiming.controllers;

import java.util.List;

import com.racetiming.racetiming.models.Competition;
import com.racetiming.racetiming.repositories.CompetitionRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * CompetitionController
 */
@RestController
public class CompetitionController {

    @Autowired
    private CompetitionRepository competitionRepostiory;

    @GetMapping("/competitions")
    public List<Competition> getAllCompetitions(){
        return (List<Competition>) competitionRepostiory.findAll();
    }

    
}