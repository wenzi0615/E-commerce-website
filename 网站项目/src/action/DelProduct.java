package action;

import com.opensymphony.xwork2.*;
import model.Products;

public class DelProduct extends ActionSupport {
	String number,name;
	String err;
	public String getErr() {
		return err;
	}

	public void setErr(String err) {
		this.err = err;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String execute(){
		//err = new model.User().verify(username, password
		vo.Product p = new vo.Product();
		p.setNumber(number);
		p.setName(name);
		boolean e = new model.Products().delProduct(p);
		System.out.println(e);
		if(e){
			//ActionContext.getContext().getSession().put("user",username);
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
