package com.edureka.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edureka.training.entity.UserCredential;

public interface UserRepository extends JpaRepository<UserCredential, Long>{
	
}
