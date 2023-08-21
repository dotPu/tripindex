package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TripAccountDAO;
import dao.TripAccountVO;
import dao.TripCalendarDAO;
import dao.TripCalendarVO;
import mail.MailSender;

@Service
public class TripService {
	
	@Autowired
	TripAccountDAO dao;
	@Autowired
	TripCalendarDAO cdao;
	
	@Autowired
	MailSender mail;
	
	public int insert(TripAccountVO ac) {
		
		return dao.insert(ac);
	}
	
	public TripAccountVO login(String id, String password) {
		
		return dao.login(id, password);
	}
	
	public int mailSend(String to) {
		return mail.SendEmail(to);
	}
	
	public TripAccountVO findOneById(String id) {
		return dao.findOneById(id);
	}
	
	public int update(TripAccountVO vo) {
		return dao.update(vo);
	}
	
	public int delete(String id) {
		return dao.delete(id);
	}
	
	
	public int calendarInsert(TripCalendarVO vo) {
		return cdao.calendarInsert(vo);
	}

	public TripCalendarVO calendarFindOneById(String id, String time) {
		return cdao.calendarFindOneById(id, time);
	}

	public int calendarUpdate(TripCalendarVO vo) {
		return cdao.calendarUpdate(vo);
	}

	public int calendarDelete(String id, String time) {
		return cdao.calendarDelete(id, time);
	}
	
	
}
