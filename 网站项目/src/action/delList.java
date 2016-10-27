package action;

import com.opensymphony.xwork2.ActionSupport;
import vo.*;
import model.*;

public class delList extends ActionSupport{
	String id,content;
	String err;
	public String getErr() {
		return err;
	}
	public void setErr(String err) {
		this.err = err;
	}
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
	@Override
	public String execute(){
		MenuList m = new MenuList(id,content);
		boolean e = new Menu().delMenuList(m);
		if(e){
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
