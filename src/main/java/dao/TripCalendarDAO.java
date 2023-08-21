package dao;

public interface TripCalendarDAO {
	public int calendarInsert(TripCalendarVO vo);
	public TripCalendarVO calendarFindOneById(String id,String time);
	public int calendarUpdate(TripCalendarVO vo);
	public int calendarDelete(String id,String time);
}
