package com.racetiming.racetiming.repositories;

import java.sql.Date;
import java.util.List;

import com.racetiming.racetiming.models.Competition;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

/**
 * ComptetitionRepository
 */
public interface CompetitionRepository extends PagingAndSortingRepository<Competition, Long> {
    @Query("select c from Competition c where date>=:today and (name like %:search% or place like %:search% or organizer like %:search% or dyscipline like %:search%)")
    Page<Competition> findAll(@Param("today") Date today, @Param("search") String search, Pageable pageable);
    
    @Query("select c from Competition c where date>=:today")
    Page<Competition> findAll(@Param("today") Date today, Pageable pageable);

    Competition findById(long id);
    
    @Query("select c from Competition c where date<:today and (name like %:search% or place like %:search% or organizer like %:search% or dyscipline like %:search%)")
    Page<Competition> findOld(@Param("today") Date today, @Param("search") String search, Pageable pageable);    
    
    @Query("select c from Competition c where date<:today")
    Page<Competition> findOld(@Param("today") Date today, Pageable pageable);    

    @Query("select c from Competition c join c.players p where p.id=:id")
    Page<Competition> findByPlayerId(@Param("id") long id, Pageable pageable);
}