package EmailSender;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Yashfaa
 */
public class EmailUtility {
    public static void sendEmail(String host, String port, final String userName, final String password,
            String toAddress, String subject, String message)throws AddressException, MessagingException{
        
        //SMTP Server Properties Settings
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        //User Authentication Session
        Authenticator auth = new Authenticator(){
            @Override
            public PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(userName, password);
            }
        };
        
        Session session = Session.getInstance(props, auth);
        
        //E-mail message Settings
        Message msg = new MimeMessage(session);
        
        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setText(message);
        
        //E-mail Transporter
        Transport.send(msg);
    }
}
