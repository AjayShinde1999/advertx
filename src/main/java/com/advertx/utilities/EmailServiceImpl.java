package com.advertx.utilities;

import java.io.File;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailServiceImpl implements EmailService {
	
    @Autowired
	private JavaMailSender sendMail;

	@Override
	public void sendMail(String to, String sub, String emailBody) {
		SimpleMailMessage mail = new SimpleMailMessage();

		mail.setTo(to);
		mail.setSubject(sub);
		mail.setText(emailBody);

		sendMail.send(mail);

	}

	@Override
	public void sendMailWithAttachment(String to, String subject, String body, String filepath) {
		MimeMessage message = sendMail.createMimeMessage();
		 try {
			 MimeMessageHelper helper = new MimeMessageHelper(message, true);
			    
			    helper.setTo(to);
			    helper.setSubject(subject);
			    helper.setText(body);
			    
			    helper.addAttachment("billId",new File(filepath));
			    
			    sendMail.send(message);
			 
		 }catch (Exception e) {
			e.printStackTrace();
		}
		    
	}
		
	}


