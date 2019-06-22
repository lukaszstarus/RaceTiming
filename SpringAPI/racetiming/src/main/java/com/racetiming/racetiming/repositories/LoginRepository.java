package com.racetiming.racetiming.repositories;

import com.racetiming.racetiming.models.Login;

import org.springframework.data.repository.CrudRepository;

/**
 * LoginRepository
 */
public interface LoginRepository extends CrudRepository<Login,Long> {

    
}