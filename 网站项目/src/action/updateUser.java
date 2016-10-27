package action;

import com.opensymphony.xwork2.ActionSupport;

import model.User;

public class updateUser extends ActionSupport {
	String username, oldpwd, newpwd1;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String execute() {
		String str = new User().changePassword(username, oldpwd, newpwd1);
		if (str.length() == 0) {
			return "success";
		} else
			return "error";
	}

	public String getOldpwd() {
		return oldpwd;
	}

	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}

	public String getNewpwd1() {
		return newpwd1;
	}

	public void setNewpwd1(String newpwd1) {
		this.newpwd1 = newpwd1;
	}

}
