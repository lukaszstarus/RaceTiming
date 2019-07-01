package com.racetiming.racetiming.controllers;

import com.racetiming.racetiming.models.Competition;
import com.racetiming.racetiming.models.Login;
import com.racetiming.racetiming.models.Player;
import com.racetiming.racetiming.repositories.CompetitionRepository;
import com.racetiming.racetiming.repositories.LoginRepository;
import com.racetiming.racetiming.repositories.PlayerRepository;
import com.racetiming.racetiming.repositories.RolesRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * CompetitionController
 */
@RestController
@CrossOrigin(allowedHeaders = "*", origins = "http://localhost:4200")
public class CompetitionController {

    @Autowired
    private CompetitionRepository competitionRepostiory;
    @Autowired
    private PlayerRepository playerRepository;
    @Autowired
    private LoginRepository loginRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private RolesRepository roleRepository;

    @GetMapping("/competitions")
    public Page<Competition> getAllCompetitions(){
        java.util.Date utilDate= new  java.util.Date();
        java.sql.Date today = new java.sql.Date(utilDate.getTime());
        Page <Competition> allCompetitions=competitionRepostiory.findAll(today,PageRequest.of(0, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/oldCompetitions/{page}")
    public Page<Competition> getOldCompetitions(@PathVariable("page")int page){
        java.util.Date utilDate= new  java.util.Date();
        java.sql.Date today = new java.sql.Date(utilDate.getTime());
        Page <Competition> allCompetitions=competitionRepostiory.findOld(today, PageRequest.of(page-1, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/competitions/{page}")
    public Page<Competition> getAllCompetitions(@PathVariable("page") int page){
        Page <Competition> allCompetitions=competitionRepostiory.findAll(PageRequest.of(page-1, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/competitiondetails/{id}")
    public Competition getCompetitionsDetails(@PathVariable("id") long id){
        Competition competitionDetails=competitionRepostiory.findById(id);
        return competitionDetails;
    }
    @GetMapping("/playercompetitions/{id}/{page}")
    public Page<Competition> getPlayerCompetitions(@PathVariable("id") long id, @PathVariable("page") int page){
        return competitionRepostiory.findByPlayerId(id,PageRequest.of(page-1,10,Sort.by("date")));
    }
    @PostMapping("/login")
    public Player getLoginData(@RequestBody Login loginData){
        Login login= loginRepository.findByEmail(loginData.getEmail());
        if(passwordEncoder.matches(loginData.getPassword(), login.getPassword()))
        {
            Player player=login.getPlayer();
            player.setRole(login.getRole().getId());
            return player;
        }
        return null;
    }
    @PostMapping("/register")
    public void registerUser(@RequestBody Login login){
        login.setRole(roleRepository.findByName("player"));
        login.setPassword(passwordEncoder.encode(login.getPassword()));
        playerRepository.save(login.getPlayer());
        loginRepository.save(login);
    }
    @PostMapping("/competitiondetails")
    public void singInToCompetitions(@RequestBody Competition competition){
        competitionRepostiory.save(competition);
    }
    @PostMapping("/player")
    public void savePlayer(@RequestBody Player player){
        playerRepository.save(player);
    }
    
}