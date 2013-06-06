package util;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class SendEmail {

	SimpleEmail email = new SimpleEmail();

	// Utilize o hostname do seu provedor de email

	public SendEmail(String smtpAddress, int Port) {

		email.setHostName(smtpAddress);
		// Quando a porta utilizada não é a padrão (gmail = 465)
		email.setSmtpPort(Port);

	}

	// Adicione os destinatários
	public boolean setAddress(String Email, String Nome) {

		try {
			email.addTo(Email, Nome);
			
		} catch (EmailException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void Sendmail(String From, String Subject, String Msg,
			String Authentication, boolean SSL, String Pass) {

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