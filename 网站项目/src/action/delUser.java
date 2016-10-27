package action;

import model.User;

import com.opensymphony.xwork2.ActionSupport;

public class delUser extends ActionSupport{
String username;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
@Override
public String execute(){
	String str=new User().delUser(username);
	if(str.length()!=0){
		return "success";
	}
	else return "error";
}
}
