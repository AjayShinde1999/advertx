package com.advertx.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.advertx.entities.Billing;
import com.advertx.repositories.BillingRespository;
import com.advertx.utilities.EmailService;
import com.advertx.utilities.PDFgeneretor;


@Service
public class BillingServiceImpl implements BillingService {
	
	@Autowired
	private BillingRespository billingRepo;
	
	@Autowired
	private PDFgeneretor pdfGeneretor;
	
	@Autowired
	private EmailService emailService;
	
	@Override
	public void save(Billing billing) {
		
		emailService.sendMail(billing.getEmail(), "Generated Bill", "Hey Dear \n" +
				billing.getFirstName()+" "+billing.getLastName()+"\nTotal Amout : "+billing.getAmount()+"\nProduct :- "+billing.getProduct() + "\n Succefully generated Bill \n Thank You \n Visit Again");
			
		Billing save = billingRepo.save(billing);
		String filepath = "D://stsversion4.17//advertx//billpdf//billId"+save.getId()+".pdf";
		pdfGeneretor.generatePDF(save,filepath);
		emailService.sendMailWithAttachment(billing.getEmail(), "Generated Bill","attachment Of Billing PDF ",filepath);
		 
	}

}