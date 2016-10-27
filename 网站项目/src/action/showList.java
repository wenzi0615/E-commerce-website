package action;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import model.*;
import vo.*;

public class showList extends ActionSupport {
	public List<MenuList> GetAllProducts(){
		return new Menu().GetAllMenuLists();
	}
}
