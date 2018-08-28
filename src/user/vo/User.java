package user.vo;

import java.util.Date;

public class User {
	private int userId;
	private String userName;
	private String userPass;
	private String userImage;
	private String email;
	private String phone;
	private String sex;
	private String passRemark;
	private Date loginTime;

	public User(String userName, String userPass) {
		this.userName = userName;
		this.userPass = userPass;
	}

	public User(int userId, String userName, String userPass, String userImage, String email, String phone, String sex, String passRemark, Date
			loginTime) {
		this.userId = userId;
		this.userName = userName;
		this.userPass = userPass;
		this.userImage = userImage;
		this.email = email;
		this.phone = phone;
		this.sex = sex;
		this.passRemark = passRemark;
		this.loginTime = loginTime;
	}

	public User(int userId, String userName, String userPass, String userImage, String email, String phone, String sex, String passRemark) {
		this.userId = userId;
		this.userName = userName;
		this.userPass = userPass;
		this.userImage = userImage;
		this.email = email;
		this.phone = phone;
		this.sex = sex;
		this.passRemark = passRemark;
	}

	public User(int userId, String userName, String userImage, String email, String phone, String sex, String passRemark) {
		this.userId = userId;
		this.userName = userName;
		this.userImage = userImage;
		this.email = email;
		this.phone = phone;
		this.sex = sex;
		this.passRemark = passRemark;
	}

	public User(String userName, String userPass, String email, String phone) {
		this.userName = userName;
		this.userPass = userPass;
		this.email = email;
		this.phone = phone;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassRemark() {
		return passRemark;
	}

	public void setPassRemark(String passRemark) {
		this.passRemark = passRemark;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
}
