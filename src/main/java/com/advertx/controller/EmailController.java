package com.advertx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.advertx.dto.Email;
import com.advertx.utilities.EmailService;


@Controller
public class EmailController {
	
	@Autowired
	private EmailService emailService;
	
	@PostMapping("/sendEmail")
	public String getEmailId(@RequestParam("email") String email,Model model) {
		model.addAttribute("email", email);
		return "composse_email";
	}
	
	@PostMapping("/triggeredEmail")
	public String triggeredEmail(Email email,Model model) {
		emailService.sendMail(email.getEmail(), email.getSubject(), email.getContent());
		model.addAttribute("sent", "Sent Successfully");
		return "composse_email";
	}

}

