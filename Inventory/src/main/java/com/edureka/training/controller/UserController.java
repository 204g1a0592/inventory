package com.edureka.training.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edureka.training.entity.Product;
import com.edureka.training.entity.UserCredential;
import com.edureka.training.entity.Vendor;
import com.edureka.training.repository.ProductRepository;
import com.edureka.training.repository.UserRepository;
import com.edureka.training.repository.VendorRepository;

@RestController
@RequestMapping("/api")
public class UserController {
	@Autowired
	UserRepository userrepo;
	@Autowired
	ProductRepository productrepo;
	@Autowired
	VendorRepository vendorrepo;
	@GetMapping()
	public String home() {
		return "home";
	}
	
	@PostMapping("/postman/register")
	public UserCredential register(@RequestBody UserCredential user) {
		System.out.println("Email: " + user.getEmail());

		return userrepo.save(user);
	}
	@PostMapping("/postman/product")
	public Product registerproduct(@RequestBody Product user) {
		//System.out.println("Email: " + user.getEmail());

		return productrepo.save(user);
	}
	@PostMapping("/postman/vendor")
	public Vendor registervendor(@RequestBody Vendor user) {
		//System.out.println("Email: " + user.getEmail());

		return vendorrepo.save(user);
	}
    @Autowired
    private UserRepository userRepository;

    @PostMapping("/users")
    public ResponseEntity<UserCredential> registerUser(@RequestBody UserCredential user) {
    	UserCredential savedUser = userRepository.save(user);
        return ResponseEntity.ok(savedUser);
    }

	}

