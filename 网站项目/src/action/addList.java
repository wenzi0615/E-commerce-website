package action;

import com.opensymphony.xwork2.ActionSupport;

import model.*;
import vo.*;

public class addList extends ActionSupport{
	String id,content;
	String err;
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
	public String getErr() {
		return err;
	}
	public void setErr(String err) {
		this.err = err;
	}
	@Override
	public String execute(){
		MenuList m = new MenuList(id,content);
		boolean e = new Menu().addMenuList(m);
		if(e){
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
