package mail;

import java.util.Random;

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
	
	public int SendEmail(String to) {
		MimeMessage msg = mail.createMimeMessage();
		int sendNum = randNum();
		try {
			
			System.out.println(sendNum);
			msg.setSubject("이메일 인증을 진행해주세요.");
			Multipart multipart = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			htmlPart.setContent(
					"여행돌이입니다. 인증번호는 다음과 같습니다 : " + Integer.toString(sendNum), "text/html; charset=utf-8");
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
			return sendNum;
		} catch (MailException e) {
			System.out.println("[MailException]");
			e.printStackTrace();
		}
		return 0;
	}
	
	public int randNum() {
        int min = 100000; // 최소값 (6자리 숫자의 최솟값)
        int max = 999999; // 최대값 (6자리 숫자의 최댓값)

        Random random = new Random();
        int sendNum = random.nextInt(max - min + 1) + min;
        
        return sendNum;
	}
}
