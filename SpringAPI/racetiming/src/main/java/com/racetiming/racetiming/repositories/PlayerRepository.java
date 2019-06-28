package com.racetiming.racetiming.repositories;

import com.racetiming.racetiming.models.Player;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
/**
 * PlayerRepository
 */
@Repository
public interface PlayerRepository extends CrudRepository<Player, Long> {    
}