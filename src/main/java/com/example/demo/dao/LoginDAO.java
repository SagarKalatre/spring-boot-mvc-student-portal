package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Login;

@Repository 
public interface LoginDAO extends JpaRepository<Login, Integer> {

    Login findByUsernameAndPassword(String username, String password);

}