package sport.model;


import java.util.Date;

public class SportEntry {
	
	private Integer id;
	private String city;
	private String title;
	private Date date_post;
	private String date_event;
	private String user_name;
	private Integer number_players; 
	private Integer age_requiement;
	private String event_time;
	private String description;
	private Integer zipcode;
	private String addresss;
	
	
	
	
	public SportEntry(Integer id, String city, String title, Date date_post, String date_event, String user_name,
			Integer number_players, Integer age_requiement, String event_time, String description, Integer zipcode,
			String addresss) {
		super();
		this.id = id;
		this.city = city;
		this.title = title;
		this.date_post = date_post;
		this.date_event = date_event;
		this.user_name = user_name;
		this.number_players = number_players;
		this.age_requiement = age_requiement;
		this.event_time = event_time;
		this.description = description;
		this.zipcode = zipcode;
		this.addresss = addresss;
	}
	

	public Integer getZipcode() {
		return zipcode;
	}

	public void setZipcode(Integer zipcode) {
		this.zipcode = zipcode;
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
	
	public Integer getNumber_players() {
		return number_players;
	}
	
	public void setNumber_players(Integer number_players) {
		this.number_players = number_players;
	}
	
	public Integer getAge_requiement() {
		return age_requiement;
	}
	
	public void setAge_requiement(Integer age_requiement) {
		this.age_requiement = age_requiement;
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
	
	public String getAddresss() {
		return addresss;
	}
	
	public void setAddresss(String addresss) {
		this.addresss = addresss;
	}
	
}
