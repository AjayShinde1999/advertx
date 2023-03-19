package com.advertx.service;

import java.util.List;

import com.advertx.entities.Contact;


public interface ContactService {
	
	public void saveContact(Contact contact);

	public List<Contact> getAllContacts();

	public Contact getContectById(long id);

	public Contact findContactById(long id);

}
