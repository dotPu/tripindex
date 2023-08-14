package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TripAccountDAO;
import dao.TripAccountVO;
import mail.MailSender;

@Service
public class TripService {
	
	@Autowired
	TripAccountDAO dao;
	
	@Autowired
	MailSender mail;
	
	public int insert(TripAccountVO ac) {
		
		return dao.insert(ac);
	}
	
	public TripAccountVO login(String id, String password) {
		
		return dao.login(id, password);
	}
	
	public void mailSend(String from, String to, String title, String content) {
		mail.SendEmail(from, to, title, content);
	}
	
}
