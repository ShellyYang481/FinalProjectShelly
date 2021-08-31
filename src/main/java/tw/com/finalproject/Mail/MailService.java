package tw.com.finalproject.Mail;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;


@Service
public class MailService {

	@Autowired
	private JavaMailSender mailSender;
	
	// simple text email
	public void prepareAndSend(String recipient, String subject, String message) {
		MimeMessagePreparator messagePreparator = mimeMessage -> {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage);
			messageHelper.setFrom("carmotorcomp@gmail.com");
			messageHelper.setTo(recipient);
			messageHelper.setSubject(subject);
			messageHelper.setText(message);
		};
		try {
			mailSender.send(messagePreparator);
		} catch (MailException e) {
			System.out.println(e);
		}
	}
	
	
	// HTML email
	public void prepareAndSendHTML(String recipient, String subject, String message) {
		MimeMessagePreparator messagePreparator = mimeMessage -> {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage);
			messageHelper.setFrom("carmotorcomp@gmail.com");
			messageHelper.setTo(recipient);
			messageHelper.setSubject(subject);
			messageHelper.setText(message,true);
		};
		try {
			mailSender.send(messagePreparator);
		} catch (MailException e) {
			System.out.println(e);
		}
	}
	
	
	// inline  pic  email
	public void prepareAndSendImg(String recipient, String subject, String message) {
		MimeMessagePreparator messagePreparator = mimeMessage -> {
			// 這邊建構時要加參數 true
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true);
			messageHelper.setFrom("carmotorcomp@gmail.com");
			messageHelper.setTo(recipient);
			messageHelper.setSubject(subject);
			
			// 以下為 img 專屬。import了springframework...ClassPathResource和Resource
			String messageSuf = "<hr/>Best Regards,<br/>Car Motor Company<br/><br/>"
					+ "<html><body><a href='http://localhost:8080/FinalProject/'><img src='cid:xxxx' width='200'></a></body></html>"
					+ "Email:<a href=\'mailto:carmotorcomp@gmail.com\'>carmotorcomp@gmail.com</a>";
			messageHelper.setText(message + messageSuf , true);
			Resource resource = new ClassPathResource("static/images/audi-logomini.png");
			messageHelper.addInline("xxxx", resource.getFile());
		};
		try {
			mailSender.send(messagePreparator);
		} catch (MailException e) {
			System.out.println(e);
		}
	}
	
}
