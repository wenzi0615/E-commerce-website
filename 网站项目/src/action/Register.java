package action;

import model.User;

import com.opensymphony.xwork2.*;

public class Register extends ActionSupport{
	String usn,pwd1,pwd2,mail;
	public String getUsn() {
		return usn;
	}
	public void setUsn(String usn) {
		this.usn = usn;
	}
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
	public String getPwd2() {
		return pwd2;
	}
	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	String err;
	
	public String getErr() {
		return err;
	}
	public void setErr(String err) {
		this.err = err;
	}
	@Override
	public String execute(){
		System.out.println(usn+pwd1+mail);
		
		err=new User().register(usn, pwd1, mail);
		if(err.length()==0){
			//ActionContext.getContext().getSession().put("user",username);
			return SUCCESS;
		}
		else
			return ERROR;
	}
}