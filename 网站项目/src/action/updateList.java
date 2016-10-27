package action;

import com.opensymphony.xwork2.ActionSupport;
import vo.*;
import model.*;

public class updateList extends ActionSupport{
	String id,content;
	String err;
	int quantity;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getErr() {
		return err;
	}
	public void setErr(String err) {
		this.err = err;
	}
	
	@Override
	public String execute(){
		MenuList m = new MenuList(id,content);
		boolean e = new Menu().updateMenuList(m);	
		if(e){
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
