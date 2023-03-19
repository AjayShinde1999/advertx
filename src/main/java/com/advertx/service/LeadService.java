package com.advertx.service;

import java.util.List;

import com.advertx.entities.Lead;


public interface LeadService {
	
	public void saveOneLead(Lead lead);

	public Lead findLeadById(long id);

	public void deleteLeadById(long id);

	public List<Lead> getAllLead();


}
