package com.racetiming.racetiming.repositories;

import com.racetiming.racetiming.models.Category;

import org.springframework.data.repository.CrudRepository;

/**
 * CategoriesRepository
 */
public interface CategoriesRepository extends CrudRepository<Category, Long>
{

    
}