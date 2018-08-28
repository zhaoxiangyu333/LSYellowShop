package admin.vo;

public class Admin {
	private int id;
	private String adminName;
	private String adminPasswd;

	public Admin(int id, String adminName, String adminPasswd) {
		this.id = id;
		this.adminName = adminName;
		this.adminPasswd = adminPasswd;
	}

	public Admin(String adminName, String adminPasswd) {
		this.adminName = adminName;
		this.adminPasswd = adminPasswd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPasswd() {
		return adminPasswd;
	}

	public void setAdminPasswd(String adminPasswd) {
		this.adminPasswd = adminPasswd;
	}
}
