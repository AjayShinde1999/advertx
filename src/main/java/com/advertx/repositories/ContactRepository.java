package com.advertx.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.advertx.entities.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
