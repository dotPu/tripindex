package mail;

import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Repository;

@Repository
public class MailSender {

	@Autowired
	JavaMailSender mail;
	
	public void SendEmail(String from, String to, String title, String content) {
		MimeMessage msg = mail.createMimeMessage();
		try {
			msg.setSubject("메일 제목");
			Multipart multipart = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			htmlPart.setContent("<strong>작성자</strong> : " + from + "<br/><br/>" 
					+ "<strong>제목</strong> : " + title + "<br/><br/>" 
					+ "<strong>내용</strong> : " + content, "text/html; charset=utf-8");
			multipart.addBodyPart(htmlPart);
			msg.setFrom(new InternetAddress("trip@gmail.com")); // 실제 메일 받았을 때 보낸사람 주소로 입력되는 값
			msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(to));
			msg.setContent(multipart);
			msg.saveChanges();
		} catch (MessagingException e) {
			System.out.println("[MessagingException]");
			e.printStackTrace();
		}
		try {
			mail.send(msg);
		} catch (MailException e) {
			System.out.println("[MailException]");
			e.printStackTrace();
		}
	}
}
