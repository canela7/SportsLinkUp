package cs3337;
import java.util.Date;

public class EventData {
	
	private Integer id;
	private String city;
	private String title;
	private Date date_post;
	private String date_event;
	private String user_name;
	private String number_players; 
	private String age_requirement;
	private String event_time;
	private String description;
	private String address;
	
	

	public EventData(Integer id, String city, String title, Date date_post, String date_event, String user_name,
			String number_players, String age_requierment, String event_time, String description, String address) {
		super();
		this.id = id;
		this.city = city;
		this.title = title;
		this.date_post = date_post;
		this.date_event = date_event;
		this.user_name = user_name;
		this.number_players = number_players;
		this.age_requirement = age_requierment;
		this.event_time = event_time;
		this.description = description;
		this.address = address;
	}

	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
		
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public Date getDate_post() {
		return date_post;
	}
	
	public void setDate_post(Date date_post) {
		this.date_post = date_post;
	}
	
	public String getDate_event() {
		return date_event;
	}
	
	public void setDate_event(String date_event) {
		this.date_event = date_event;
	}
	
	public String getUser_name() {
		return user_name;
	}
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getNumber_players() {
		return number_players;
	}
	
	public void setNumber_players(String number_players) {
		this.number_players = number_players;
	}
	
	public String getAge_requirement() {
		return age_requirement;
	}
	
	public void setAge_requiement(String age_requirement) {
		this.age_requirement = age_requirement;
	}
	
	public String getEvent_time() {
		return event_time;
	}
	
	public void setEvent_time(String event_time) {
		this.event_time = event_time;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddresss(String address) {
		this.address = address;
	}
	
}
