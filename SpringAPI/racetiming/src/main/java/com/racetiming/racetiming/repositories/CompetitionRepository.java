package com.racetiming.racetiming.repositories;

import java.util.List;

import com.racetiming.racetiming.models.Competition;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

/**
 * ComptetitionRepository
 */
public interface CompetitionRepository extends PagingAndSortingRepository<Competition,Long> {
    Page<Competition> findAll(Pageable pageable);
    Competition findById(long id);
    
}