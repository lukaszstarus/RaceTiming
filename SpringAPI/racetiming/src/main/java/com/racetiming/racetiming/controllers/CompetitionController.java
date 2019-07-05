package com.racetiming.racetiming.controllers;

import java.util.List;

import com.racetiming.racetiming.models.Competition;
import com.racetiming.racetiming.models.Login;
import com.racetiming.racetiming.models.Player;
import com.racetiming.racetiming.models.PlayerCategory;
import com.racetiming.racetiming.repositories.CategoriesRepository;
import com.racetiming.racetiming.repositories.CompetitionRepository;
import com.racetiming.racetiming.repositories.LoginRepository;
import com.racetiming.racetiming.repositories.PlayerCategoryRepository;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * CompetitionController
 */
@RestController
@CrossOrigin(origins = "http://localhost:4200")
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
    @Autowired 
    private PlayerCategoryRepository playercatRepository;
    @Autowired
    private CategoriesRepository categoryRepository;

    @CrossOrigin
    @RequestMapping(value = "/oldcompetitions/{page}/{search}", method =RequestMethod.GET)
    @ResponseBody
    public Page<Competition> getFilteredOldCompetitions(@PathVariable("page")int page, @PathVariable("search") String search){
        java.util.Date utilDate= new  java.util.Date();
        java.sql.Date today = new java.sql.Date(utilDate.getTime());
        Page <Competition> allCompetitions=competitionRepostiory.findOld(today,search, PageRequest.of(page-1, 10, Sort.by("date")));
        return allCompetitions;
    }
    @CrossOrigin
    @RequestMapping(value = "/oldcompetitions/{page}", method =RequestMethod.GET)
    @ResponseBody
    public Page<Competition> getOldCompetitions(@PathVariable("page")int page){
        java.util.Date utilDate= new  java.util.Date();
        java.sql.Date today = new java.sql.Date(utilDate.getTime());
        Page <Competition> allCompetitions=competitionRepostiory.findOld(today, PageRequest.of(page-1, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/competitions/{page}/{search}")
    public Page<Competition> getFilteredAllCompetitions(@PathVariable("page") int page, @PathVariable("search") String search){
        java.util.Date utilDate= new  java.util.Date();
        java.sql.Date today = new java.sql.Date(utilDate.getTime());
        Page <Competition> allCompetitions=competitionRepostiory.findAll(today,search,PageRequest.of(page-1, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/competitions/{page}")
    public Page<Competition> getAllCompetitions(@PathVariable("page") int page){
        java.util.Date utilDate= new  java.util.Date();
        java.sql.Date today = new java.sql.Date(utilDate.getTime());
        Page <Competition> allCompetitions=competitionRepostiory.findAll(today, PageRequest.of(page-1, 10, Sort.by("date")));
        return allCompetitions;
    }
    @GetMapping("/competitiondetails/{id}")
    public Competition getCompetitionsDetails(@PathVariable("id") long id){
        List<PlayerCategory> playerCategory=playercatRepository.findByCompetitionsId(id);
        Competition competitionDetails= playerCategory.get(0).getCompetitions();
        int i=0;
        for(Player player: competitionDetails.getPlayers()){
            player.setCategory(playerCategory.get(i++).getCategories().getName());
        }
        return competitionDetails;
    }
    @GetMapping("/playercompetitions/{id}/{page}")
    public Page<Competition> getPlayerCompetitions(@PathVariable("id") long id, @PathVariable("page") int page){
        return competitionRepostiory.findByPlayerId(id,PageRequest.of(page-1,10,Sort.by("date")));
    }
    @PostMapping("/login")
    public Login getLoginData(@RequestBody Login loginData){
        Login login= loginRepository.findByEmail(loginData.getEmail());
        if(passwordEncoder.matches(loginData.getPassword(), login.getPassword()))
        {
            return login;
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
        Player player=competition.getPlayers().get(competition.getPlayers().size()-1);
        PlayerCategory pc= new PlayerCategory(player,competition, categoryRepository.findByName(player.getCategory()));
        playercatRepository.save(pc);
    }
    @PostMapping("/signout")
    public void singOutOfCompetitions(@RequestBody Competition competition){
        Player player=competition.getPlayers().get(competition.getPlayers().size()-1);
        competition.getPlayers().remove(player);
        competitionRepostiory.save(competition);
        List<PlayerCategory> pc= playercatRepository.findByPlayerAndCompetitions(player, competition);
        playercatRepository.deleteAll(pc);
    }
    @PostMapping("/player")
    public void savePlayer(@RequestBody Player player){
        playerRepository.save(player);
    }
    
}