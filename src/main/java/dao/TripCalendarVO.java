package dao;

public class TripCalendarVO {
	private String id;
	private String content;
	private String time;
	
	public TripCalendarVO() {
		// TODO Auto-generated constructor stub
	}

	public TripCalendarVO(String id, String content, String time) {
		this.id = id;
		this.content = content;
		this.time = time;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "TripCalendarVO [id=" + id + ", content=" + content + ", time=" + time + "]";
	}
	
	
	
	
}
