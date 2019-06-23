package com.racetiming.racetiming.repositories;

import com.racetiming.racetiming.models.Competition;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * ComptetitionRepository
 */
public interface CompetitionRepository extends PagingAndSortingRepository<Competition,Long> {
    Page<Competition> findAll(Pageable pageable);
    Competition findById(long id);
    
}