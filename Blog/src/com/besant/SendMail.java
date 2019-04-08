package com.besant;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail {

	public String senddemo(String emailto, String emailfrom) {
		
		
		String pass="menka12327";
		String subject="registeration Demo";
		String hash="1234";
		String msg="you have been registered successfully";
		 Properties props = new Properties();
	     props.put("mail.smtp.host", "smtp.gmail.com");
	     props.put("mail.smtp.port", "587");		
	     props.put("mail.smtp.auth", "true");
	     props.put("mail.smtp.starttls.enable", "true");
	     
	     Session session = Session.getInstance(props,new javax.mail.Authenticator()
	     {
	   	  protected javax.mail.PasswordAuthentication getPasswordAuthentication() 
	   	  {
	   	 	 return new PasswordAuthentication(emailfrom,pass);
	   	  }
	    });
	     
	     try {  
	    	 MimeMessage message = new MimeMessage(session);  
	    	 message.setFrom(new InternetAddress(emailfrom));  
	    	 message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailto));  
	    	 message.setSubject(subject);  
	    	 message.setText(msg);  
	    	 
	    	 Transport.send(message);  
	    	  
	    	 System.out.println("Done");  
	    	  
	    	 } catch (MessagingException e) {  
	    	    throw new RuntimeException(e);  
	    	 }  
	    	       
		return null;
	
	 
}

	public String sendregister(String emailto, String emailfrom,String hash) {
		String pass="menka12327";
		String subject="complete the registeration ";
		
		String msg="To complete the registration process completely , click on the link";
		 Properties props = new Properties();
	     props.put("mail.smtp.host", "smtp.gmail.com");
	     props.put("mail.smtp.port", "587");		
	     props.put("mail.smtp.auth", "true");
	     props.put("mail.smtp.starttls.enable", "true");
	     
	     Session session = Session.getInstance(props,new javax.mail.Authenticator()
	     {
	   	  protected javax.mail.PasswordAuthentication getPasswordAuthentication() 
	   	  {
	   	 	 return new PasswordAuthentication(emailfrom,pass);
	   	  }
	    });
	     
	     try {  
	    	 MimeMessage message = new MimeMessage(session);  
	    	 message.setFrom(new InternetAddress(emailfrom));  
	    	 message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailto));  
	    	 message.setSubject(subject);  
	    	 message.setText(msg + "  http://localhost:8080/Blog/Confirmregister?key1="+hash);  
	    	 
	    	 Transport.send(message);  
	    	  
	    	 System.out.println("Done");  
	    	  
	    	 } catch (MessagingException e) {  
	    	    throw new RuntimeException(e);  
	    	 }  
	    	       
		
		
		return null;
	}
}