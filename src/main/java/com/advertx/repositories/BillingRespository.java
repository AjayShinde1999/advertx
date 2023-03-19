package com.advertx.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.advertx.entities.Billing;

public interface BillingRespository extends JpaRepository<Billing, Long> {

}
