package admin.vo;

public class LoginInfo {
	private int id;
	private String userName;
	private String year;
	private String date;

	public LoginInfo(int id, String userName, String year, String date) {
		this.id = id;
		this.userName = userName;
		this.year = year;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
