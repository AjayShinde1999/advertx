package com.advertx.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.advertx.entities.Lead;

public interface LeadRepository extends JpaRepository<Lead, Long> {

}
