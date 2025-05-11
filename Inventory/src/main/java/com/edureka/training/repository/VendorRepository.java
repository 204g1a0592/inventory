package com.edureka.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edureka.training.entity.UserCredential;
import com.edureka.training.entity.Vendor;

public interface VendorRepository extends JpaRepository<Vendor, Long>{
	
}
