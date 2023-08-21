package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mapper.TripAccountMapper;
import mapper.TripCalendarMapper;

@Repository
public class TripCalendarMapperDAO implements TripCalendarDAO{

	@Autowired
	TripCalendarMapper mapper;

	@Override
	public int calendarInsert(TripCalendarVO vo) {
		return mapper.calendarInsert(vo);
	}

	@Override
	public TripCalendarVO calendarFindOneById(String id, String time) {
		return mapper.calendarFindOneById(id, time);
	}

	@Override
	public int calendarUpdate(TripCalendarVO vo) {
		return mapper.calendarUpdate(vo);
	}

	@Override
	public int calendarDelete(String id, String time) {
		return mapper.calendarDelete(id, time);
	}
	
}
