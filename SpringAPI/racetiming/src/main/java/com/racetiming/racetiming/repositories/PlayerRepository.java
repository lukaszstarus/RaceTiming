package com.racetiming.racetiming.repositories;

import com.racetiming.racetiming.models.Player;

import org.springframework.data.repository.CrudRepository;
/**
 * PlayerRepository
 */
public interface PlayerRepository extends CrudRepository<Player, Long> {

    
}