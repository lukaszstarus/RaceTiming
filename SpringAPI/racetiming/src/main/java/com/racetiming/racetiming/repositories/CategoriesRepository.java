package com.racetiming.racetiming.repositories;

import java.util.List;

import com.racetiming.racetiming.models.Category;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 * CategoriesRepository
 */
public interface CategoriesRepository extends CrudRepository<Category, Long>{
    // @Query("select c.name as categoryName from category c join category_competitions cc on c.id=cc.category_i where competitions_id=:id")
    // List<Category> findByCompetitionsId(@Param("id") long id);

    
}