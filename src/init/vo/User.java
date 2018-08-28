package init.vo;

import java.util.Date;
import java.util.List;

public class User {
	private String userName;
	private String userPass;
	private String userImage;
	private String email;
	private String phone;
	private String sex;
	private String passRemark;
	private Date loginTime;
	private List<String> commits;


	public User(String userName, String userImage) {
		this.userName = userName;
		this.userImage = userImage;
	}


	public User(String userName, String userPass, String userImage, String email, String phone, String sex, String passRemark, Date loginTime) {
		this.userName = userName;
		this.userPass = userPass;
		this.userImage = userImage;
		this.email = email;
		this.phone = phone;
		this.sex = sex;
		this.passRemark = passRemark;
		this.loginTime = loginTime;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
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

	public List<String> getCommits() {
		return commits;
	}

	public void setCommits(List<String> commits) {
		this.commits = commits;
	}
}
