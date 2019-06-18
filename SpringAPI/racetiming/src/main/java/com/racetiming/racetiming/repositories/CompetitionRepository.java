package com.racetiming.racetiming.repositories;

import com.racetiming.racetiming.models.Competition;

import org.springframework.data.repository.CrudRepository;

/**
 * ComptetitionRepository
 */
public interface CompetitionRepository extends CrudRepository<Competition,Long> {

    
}