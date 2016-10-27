package action;

import javax.jms.Session;

import model.User;
import com.opensymphony.xwork2.*;

public class Login  extends ActionSupport{
	String username,password;
	String err;

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
	
	public String getErr() {
		return err;
	}
	public void setErr(String err) {
		this.err = err;
	}
	
	@Override
	public String execute(){
		err = new model.User().verify(username, password);
		System.out.println(err);
		if(err.length()==0){
			ActionContext.getContext().getSession().put("username",username);
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
