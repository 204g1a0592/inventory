package com.edureka.training.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
  
    private Long productId;  // Unique Product ID

    private String productName;  // Name of the product

    @Column(nullable = false)
    private int quantity;  // Quantity of the product in stock

    @Column(nullable = false)
    private double price;  // Price of the product
  //  @Column(nullable = false)
    private String description;  // Price of the product

  // The unique product sold by this vendor (foreign key)

   


	// Getters and Setters
    public Long getProductId() {
        return productId;
    }

    public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
