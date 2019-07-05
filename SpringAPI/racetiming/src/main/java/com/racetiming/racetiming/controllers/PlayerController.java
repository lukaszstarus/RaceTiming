package com.racetiming.racetiming.controllers;

import com.racetiming.racetiming.repositories.PlayerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;

/**
 * PlayerController
 */
@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class PlayerController {
    @Autowired
    PlayerRepository playerRepository;


    
}