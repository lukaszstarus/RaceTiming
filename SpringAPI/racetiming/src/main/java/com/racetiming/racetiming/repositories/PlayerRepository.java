package com.racetiming.racetiming.repositories;

import java.util.List;

import com.racetiming.racetiming.models.Player;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
/**
 * PlayerRepository
 */
@Repository
public interface PlayerRepository extends CrudRepository<Player, Long> {
    @Query("select new com.racetiming.racetiming.models.Player(p.name as name, p.surname as surname, p.city as city,"+
    " p.country as country, p.sex as sex, p.team as team)"+
    " from Player p join p.competitions pc"+
    " where pc.id=:id")
    List<Player> findByCompetitionsId(@Param("id") long id);
    
}