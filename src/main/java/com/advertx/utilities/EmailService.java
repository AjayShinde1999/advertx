package com.advertx.utilities;

public interface EmailService {
	
	public void sendMail(String to,String sub,String emailBody);
	
	public void sendMailWithAttachment(String to, String subject, String body, String filepath);

}
