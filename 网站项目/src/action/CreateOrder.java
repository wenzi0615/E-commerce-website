package action;

import vo.*;
import model.*;

import com.opensymphony.xwork2.*;

public class CreateOrder  extends ActionSupport{
	String username,address,e_mail,phone;
	String total_price;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String eMail) {
		e_mail = eMail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTotal_price() {
		return total_price;
	}
	public void setTotal_price(String totalPrice) {
		total_price = totalPrice;
	}
	@Override
	public String execute(){
		boolean e = false;
		vo.Order o = new vo.Order(username, address, e_mail, phone, Double.parseDouble(total_price));
		e = new model.Order().CreateOrder(o);
		if(e){
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
