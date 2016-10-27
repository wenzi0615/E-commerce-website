package action;

import model.User;

import com.opensymphony.xwork2.ActionSupport;

public class addUser extends ActionSupport {
	String username,password,mail;
public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
@Override
public String execute(){
	String str=new User().register(username, password, mail);          
	if(str.length()==0){
	return "success";
	}
	else
		return "error";
}
}
