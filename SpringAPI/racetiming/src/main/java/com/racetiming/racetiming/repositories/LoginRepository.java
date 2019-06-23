package com.racetiming.racetiming.repositories;

import java.util.List;

import com.racetiming.racetiming.models.Login;
import com.racetiming.racetiming.models.Player;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 * LoginRepository
 */
public interface LoginRepository extends CrudRepository<Login,Long> {
    @Query("Select new com.racetiming.racetiming.models.Player(p.name as name, p.surname as surname, p.city as city,"+
    " p.country as country, p.sex as sex, p.team as team)"+
    " from Player p join p.login l where l.email=:mail and l.password=:passwd")
    Player findByEmail(@Param("mail") String mail, @Param("passwd") String passwd);

    
}