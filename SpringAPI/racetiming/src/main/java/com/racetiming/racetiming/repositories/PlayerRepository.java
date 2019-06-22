package com.racetiming.racetiming.repositories;

import java.util.List;

import com.racetiming.racetiming.models.Player;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
/**
 * PlayerRepository
 */
public interface PlayerRepository extends CrudRepository<Player, Long> {
    // @Query("select p.name as name, p.surname as surname, p.city as city, p.country as country, p.sex as sex from player p join player_competitions pc on p.id=pc.player_id where competitions_id=:id")
    // List<Player> findByCompetitionsId(@Param("id") long id);
    
}