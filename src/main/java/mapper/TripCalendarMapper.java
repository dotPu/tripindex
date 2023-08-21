package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import dao.TripCalendarVO;



public interface TripCalendarMapper {
	public int calendarInsert(@Param("vo") TripCalendarVO vo);
	public TripCalendarVO calendarFindOneById(@Param("id")String id,@Param("time")String time);
	public int calendarUpdate(@Param("vo")TripCalendarVO vo);
	public int calendarDelete(String id,String time);
}
