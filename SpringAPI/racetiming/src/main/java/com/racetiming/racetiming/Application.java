package com.racetiming.racetiming;

import java.io.File;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

import com.racetiming.racetiming.models.Category;
import com.racetiming.racetiming.models.Competition;
import com.racetiming.racetiming.models.Login;
import com.racetiming.racetiming.models.Player;
import com.racetiming.racetiming.models.PlayerCategory;
import com.racetiming.racetiming.models.Role;
import com.racetiming.racetiming.repositories.CategoriesRepository;
import com.racetiming.racetiming.repositories.CompetitionRepository;
import com.racetiming.racetiming.repositories.LoginRepository;
import com.racetiming.racetiming.repositories.PlayerCategoryRepository;
import com.racetiming.racetiming.repositories.PlayerRepository;
import com.racetiming.racetiming.repositories.RolesRepository;

import org.joda.time.DateTime;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {
    // private long beginTime;
	// private long endTime;
	
	public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
    
    // @Bean
    // public CommandLineRunner demo (LoginRepository loginRepository, RolesRepository rolesRepository, PlayerCategoryRepository playerCategoryRepository, CompetitionRepository competitionRepository, CategoriesRepository categoriesRepository, PlayerRepository playerRepository)
    // {
    //     return (args)->{
    //         init(loginRepository, rolesRepository, playerCategoryRepository, competitionRepository,categoriesRepository, playerRepository);
    //     };
    // }
    public void init(LoginRepository loginRepository, RolesRepository rolesRepository, PlayerCategoryRepository playerCategoryRepository,CompetitionRepository competitionRepository, CategoriesRepository categoriesRepository, PlayerRepository playerRepository){
        List<Competition> competitions= new ArrayList<>();
        List<Competition> compForCategories= new ArrayList<>();
        List<Player> playersList= new ArrayList<>();
        List<Player> playersInCompetition= new ArrayList<>();
        List<Category> categoriesList = new ArrayList<>();
        List<PlayerCategory> playerCategoryList= new ArrayList<>();
        List<Login> loginList= new ArrayList<>();
        List<Role> roleList= new ArrayList<>();
        List<String> citiesList = new ArrayList<String>();
        List<String> countriesList = new ArrayList<String>();
        List<String> teamsList= new ArrayList<>();
        List<String> discList = new ArrayList<String>();

        int cityIndex;
        String sex;
        DateTime competitionDate= DateTime.now();
        Competition competition= new Competition();
        Category category= new Category();
        Player player= new Player();

        
        try{
            Scanner names = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Names.txt"));
            Scanner splitnames;
            Scanner cities = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Cities.txt"));
            Scanner disciplines = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Disciplines.txt"));
            Scanner descriptions = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Descriptions.txt"));
            Scanner urls = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Url.txt"));
            Scanner categories = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Categories.txt"));
            Scanner playerNames = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\PlayerNames.txt"));
            Scanner countries = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Countries.txt"));
            Scanner phoneNumbers = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\PhoneNumbers.txt"));
            Scanner teams = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Teams.txt"));
            Scanner licenses = new Scanner(new File ("Racetiming\\SpringApi\\racetiming\\src\\main\\java\\com\\racetiming\\racetiming\\files\\Licenses.txt"));

            
            //------------------------Generate Countries---------------------------------------------
            while(countries.hasNext()){
                countriesList.add(countries.nextLine());
            }
            //------------------------Generate Cities---------------------------------------------
            while(cities.hasNext()){
                citiesList.add(cities.nextLine());
            }
            //------------------------Generate Disciplines---------------------------------------------
            while(disciplines.hasNext()){
                discList.add(disciplines.nextLine());
            }   
            //------------------------Generate Teams---------------------------------------------
            while(teams.hasNext()){
                teamsList.add(teams.next());
            }
            //------------------------Role table-----------------------------------------------
            roleList.add(new Role("player"));
            roleList.add(new Role("admin"));

            //------------------------Category table-----------------------------------------------
                    while(categories.hasNext()){
                        categoriesList.add(
                            new Category(
                                categories.nextLine()
                            ));
                    }
         
            //------------------------Player table-----------------------------------------------
            cities.reset();
            while(playerNames.hasNext()){
                splitnames =new Scanner(playerNames.nextLine());
                if(new Random().nextInt(3)>1){
                    sex="female";
                }else {
                    sex="male";
                }
                String name=splitnames.next();
                
                playersList.add(
                    new Player(
                        name,
                        splitnames.next(),
                        citiesList.get(new Random().nextInt(citiesList.size()-1)),
                        new Date(DateTime.now().minusYears(10).minusDays(new Random().nextInt(10000)).getMillis()),
                        countriesList.get(new Random().nextInt(countriesList.size()-1)),
                        sex,
                        phoneNumbers.nextLine(),
                        teamsList.get(new Random().nextInt(teamsList.size()-1)),
                        licenses.next()
                    ));
                    loginList.add(
                    new Login(
                        name+"@gmail.com",
                        "12345",
                        roleList.get(0),
                        playersList.get(playersList.size()-1)         
                    )
                );
            }
            //------------------------Competitions table-----------------------------------------------
            for(int i=0; i<competitions.size()/2; i++){
                player=playersList.get(new Random().nextInt(playersList.size()-1));
                if (!playersInCompetition.contains(player))
                    playersInCompetition.add(player);
            }   
            while(names.hasNext()){
                playersInCompetition= new ArrayList<>();
                for(int i=0; i<competitions.size()/2; i++){
                    player=playersList.get(new Random().nextInt(playersList.size()-1));
                    if (!playersInCompetition.contains(player))
                        playersInCompetition.add(player);
                }   
                cityIndex=new Random().nextInt(citiesList.size()-1);
                splitnames =new Scanner(names.nextLine());
                competitions.add(
                    new Competition(
                        splitnames.next() +" Competitions",
                        citiesList.get(cityIndex),
                        discList.get(new Random().nextInt(discList.size()-1)),
                        new Date(competitionDate.minusDays(new Random().nextInt(1000)-100).getMillis()),
                        splitnames.next(),
                        new Date(competitionDate.plusDays(60).getMillis()),
                        descriptions.nextLine(),
                        urls.nextLine(),
                        new Random().nextInt(1000)/10*10,
                        urls.nextLine(),
                        playersInCompetition,
                        categoriesList
                    ));
                splitnames.close();
            }
            //------------------------PlayerCategory table-----------------------------------------------
            for(int i=0; i<competitions.size()/2; i++){
                competition=competitions.get(new Random().nextInt(competitions.size()-1));
                if (!compForCategories.contains(competition))
                    compForCategories.add(competition);
            }   
                category =categoriesList.get(new Random().nextInt(categoriesList.size()-1));
                    for (Competition comp : compForCategories) {
                        playerCategoryList.add( 
                            new PlayerCategory(
                                playersList.get(playersList.size()-1),
                                comp,
                                category
                        ));
                    }
            
            categoriesRepository.saveAll(categoriesList);
            playerRepository.saveAll(playersList);
            competitionRepository.saveAll(competitions);
            rolesRepository.saveAll(roleList);
            loginRepository.saveAll(loginList);
            playerCategoryRepository.saveAll(playerCategoryList); 

            urls.close();
            names.close();
            cities.close();
            categories.close();
            disciplines.close();
            descriptions.close();
            playerNames.close();
            countries.close();
            phoneNumbers.close();
            teams.close();
            licenses.close();
        }catch(Exception e){
            System.err.println(e.getMessage());
        }
    }  
}
