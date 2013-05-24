package util;

import java.util.Properties;  
import javax.mail.Message;  
import javax.mail.Session;  
import javax.mail.Transport;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;   
import javax.mail.Authenticator;  
import javax.mail.PasswordAuthentication;   

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.apache.commons.mail.Email;

  
public class SendEmail {  
      
    
	SimpleEmail email = new SimpleEmail();
	// Utilize o hostname do seu provedor de email

	public SendEmail(String smtpAddress, int Port){

		email.setHostName(smtpAddress);
		// Quando a porta utilizada não é a padrão (gmail = 465)
		email.setSmtpPort(Port);
		
	}
	
	// Adicione os destinatários
	public boolean GetAddress(String Email, String Nome){
	
			try {
				email.addTo(Email, Nome);
			} catch (EmailException e) {
				e.printStackTrace();
			}
		return false;	
	}
	
	public void Sendmail(String From, String Subject, String Msg, String Authentication, boolean SSL, String Pass){
		
		try {
			email.setFrom(From, "JTicketMaster");
		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		email.setSubject(Subject);
		try {
			email.setMsg(Msg);
		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		email.setSSL(SSL);
		email.setAuthentication(Authentication, Pass);
		
		try {
			email.send();
		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	} 
	
	
	
}