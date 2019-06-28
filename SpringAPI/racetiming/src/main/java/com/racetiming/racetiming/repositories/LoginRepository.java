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
    @Query("Select p,r  from Login l join l.player p join l.role r where l.email=:mail and l.password=:passwd")
    Player findByEmail(@Param("mail") String mail, @Param("passwd") String passwd);

    
}