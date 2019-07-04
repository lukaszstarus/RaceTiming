package com.racetiming.racetiming.repositories;

import java.util.List;

import com.racetiming.racetiming.models.PlayerCategory;

import org.springframework.data.repository.CrudRepository;

/**
 * PlayerCategoryRepository
 */
public interface PlayerCategoryRepository extends CrudRepository<PlayerCategory,Long>{    
    List<PlayerCategory> findByCompetitionsId(long id);
}