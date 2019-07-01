package com.racetiming.racetiming.repositories;

import com.racetiming.racetiming.models.Login;
import com.racetiming.racetiming.models.Player;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 * LoginRepository
 */
public interface LoginRepository extends CrudRepository<Login,Long> {
    @Query("Select l,p,r  from Login l join l.player p join l.role r where l.email=:mail")
    Login findByEmail(@Param("mail") String mail);

    @Query("Select l,p,r from Login l join l.player p join l.role r where l.id=:id")
    Login fingById(@Param("id") long id);
}