package helper;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.SimpleEmail;

public class EmailHelper {
	
	public static void generateAndSendEmail(){
		
		String emailBody = "Build Status Test Report Email for DPA-Pipeline by zaizi.com  "
				+ "generated report could be found in this url "
				+ "http://dpa-qa-automation-reports.s3-website.eu-west-2.amazonaws.com/reports/qa-automation/ui/DPA-Framework/reports/index.html \"";
		try {
			Email email = new SimpleEmail();
			email.setHostName("smtp.googlemail.com");
			email.setSmtpPort(465);
			email.setSSLOnConnect(true);
			email.setAuthenticator(new DefaultAuthenticator("dpa.qa.automation@gmail.com", "rkeiqyvrqyjvpbjp"));
			email.setFrom("dpa.qa.automation@gmail.com");
			email.setSubject("DPA-PIPELINE");
			email.setMsg(emailBody);
			email.addTo("murshidhassen@zaizi.com");            
	        email.send();
	        System.out.println("Email-sent-successfully");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
