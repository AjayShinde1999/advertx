package com.advertx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.advertx.entities.Contact;
import com.advertx.service.ContactService;


@Controller
public class ContactController {
	
    @Autowired
	private ContactService contactService;


	@RequestMapping("/listAllContacts")
	public String listAllContacts(Model model) {
		List<Contact> contacts = contactService.getAllContacts();
		model.addAttribute("contacts", contacts);
		return "list_contacts";

	}
	
	@RequestMapping("/contactInfo")
	public String contactInfo(@RequestParam("id") long id,Model model) {
		Contact contact = contactService.findContactById(id);
		
		model.addAttribute("contact", contact);
		return "contact_info";
		
	}

}
