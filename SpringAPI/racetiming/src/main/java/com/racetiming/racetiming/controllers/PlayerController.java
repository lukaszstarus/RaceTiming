package com.racetiming.racetiming.controllers;

import java.util.List;

import com.racetiming.racetiming.models.PlayerTableData;
import com.racetiming.racetiming.repositories.PlayerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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