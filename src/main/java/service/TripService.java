package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TripAccountDAO;
import dao.TripAccountVO;

@Service
public class TripService {
	
	@Autowired
	TripAccountDAO dao;
	
	public int insert(TripAccountVO ac) {
		
		return dao.insert(ac);
	}
	
	
}
